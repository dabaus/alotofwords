//
//  main.cpp
//  alotofwords
//
//  Created by Jakob Stengard on 2023-10-13.
//
#include <iostream>
#include <string>
#include <set>
#include <vector>
#include <chrono>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <errno.h>

namespace fs = std::filesystem;
using std::chrono::duration_cast;
using std::chrono::system_clock;
using std::chrono::milliseconds;
using namespace std;

const string VOCALS = "aeiouyáéíóúãẽĩõũâêîôûåäö";
const string CONSONANTS = "bcdfghjklmnpqrstvwxzʃʒʧʤθð";

class Processor {
    
private:
    static constexpr auto _lenComp = [](string a, string b) { return a != b && a.size() >= b.size(); };
    set<string, decltype(_lenComp)> _inputSet;
    
    static long _sumChars(string word) {
        long points = 0;
        for (int i=0; i<word.size(); i++) {
            auto c = word[i];
            if(VOCALS.find(c) != string::npos) {
                points += 2;
            } else if(CONSONANTS.find(c) != string::npos) {
                points += 1;
            }
        }
        return points;
    }
    
public:
    Processor() : _inputSet() {
    }
    
    void addLine(string line) {
        _inputSet.insert(line);
    }
    
    long computeResult() {
        const auto alphaComp = [](string a, string b) { return a.compare(b) < 0; };
        vector<set<string, decltype(alphaComp)>*> vecOfSets;
        // Create groups
        int slack =-1, index=-1;
        for(auto word : _inputSet){
            auto size = word.size();
            if(slack != size) {
                // Create new set
                slack = size;
                vecOfSets.push_back(new set<string, decltype(alphaComp)>);
                index++;
            }
            vecOfSets[index]->insert(word);
        }
       
        // Sum points
        long totalSum = 0;
        for(auto wordSet : vecOfSets) {
            const int size = wordSet->size();
            int n = 0;
            for(auto word : *wordSet) {
                n++;
                if(n == 1) { continue; } // Skip first
                if(n == size) { continue; } // Skip last
                totalSum += _sumChars(word);
            }
            delete wordSet;
        }
        return totalSum;
    }
};

long readFileAndProcess(char const *fName)
{
    struct stat sb;
    long cntr = 0;
    int fd, strLen=0;
    char *data;
    char *line;
     // map the file
    fd = open(fName, O_RDONLY);
    if(fstat(fd, &sb) != 0) {
        cerr << "Error reading loTSoFWOrds.txt: " <<  strerror(errno) << endl;
    }

    data = (char *)mmap((caddr_t)0, sb.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
    line = data;
    
    Processor proc;
    while(cntr < sb.st_size) {
        strLen = 0;
        line = data;
         // find the next line
        while(cntr < sb.st_size && data[0] != '\n') {
            data++;
            cntr++;
            strLen++;
        }
        string s(line, strLen-1);
        proc.addLine(s);
        data++;
        cntr++;
    }
    close(fd);
    return proc.computeResult();
}


int main(int argc, const char * argv[]) {
    auto totalTime = 0;
    
    for(int i=0; i<3; i++) {
        auto startedAt = duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count();
        long result = readFileAndProcess("loTSoFWOrds.txt");
        
        auto timeTaken = duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count() - startedAt;
        totalTime += timeTaken;
        cout << "Run " << i << ", Sum: " << result << endl;
        cout << "Run " << i << ", Time taken:  " << timeTaken << "ms" << endl;
    }
    
    cout << "Avg. time:  " << totalTime / 3.0 << "ms" << endl;
    return 0;
}

