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
class Processor {
    
private:
    static constexpr auto _lenComp = [](string const &a, string const &b) { return a != b && a.size() >= b.size(); };
    set<string, decltype(_lenComp)> _inputSet;
    
    static inline long _sumChars(const string *word) {
        long points = 0;
        const long size = word->size();
        for (int i=0; i<size; i++) {
            auto c = (*word)[i];
            
            // Jump table with the most common cases which are ascii
            switch (c) {
                case 'a':
                case 'e':
                case 'i':
                case 'o':
                case 'u':
                case 'y':
                case u'á':
                case u'é':
                case u'í':
                case u'ó':
                case u'ú':
                case u'ã':
                case u'ẽ':
                case u'ĩ':
                case u'õ':
                case u'ũ':
                case u'â':
                case u'ê':
                case u'î':
                case u'ô':
                case u'û':
                    points += 2;
                    continue;
                case 'b':
                case 'c':
                case 'd':
                case 'f':
                case 'g':
                case 'h':
                case 'j':
                case 'k':
                case 'l':
                case 'm':
                case 'n':
                case 'p':
                case 'q':
                case 'r':
                case 's':
                case 't':
                case 'v':
                case 'w':
                case 'x':
                case 'z':
                case u'ʃ':
                case u'ʒ':
                case u'ʧ':
                case u'ʤ':
                case u'θ':
                case u'ð':
                    points += 1;
                    continue;
                default:
                    break;
            }
        }
        return points;
    }
    
public:
    Processor() : _inputSet() {
    }
    
    void addLine(string &line) {
        _inputSet.insert(line);
    }
    
    long computeResult() {
        const auto alphaComp = [](const string *a, const string *b) { return a->compare(*b) < 0; };
        vector<set<const string*, decltype(alphaComp)>*> vecOfSets;
        // Create groups
        int slack =-1, index=-1;
        for(auto itr = _inputSet.begin(); itr != _inputSet.end(); itr++){
            const string* word = &(*itr);
            auto size = word->size();
            if(slack != size) {
                // Create new set
                slack = size;
                vecOfSets.push_back(new set<const string*, decltype(alphaComp)>);
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

static inline long readFileAndProcess(char const *fName)
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

