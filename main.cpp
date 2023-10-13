//
//  main.cpp
//  alotofwords
//
//  Created by Jakob Stengard on 2023-10-13.
//
#include <iostream>
#include <fstream>
#include <string>
#include <set>
#include <vector>
#include <chrono>

namespace fs = std::filesystem;
using std::chrono::duration_cast;
using std::chrono::system_clock;
using std::chrono::milliseconds;
using namespace std;

const string VOCALS = "aeiouyáéíóúãẽĩõũâêîôûåäö";
const string CONSONANTS = "bcdfghjklmnpqrstvwxzʃʒʧʤθð";

long sumChars(string word) {
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

int main(int argc, const char * argv[]) {
    
    const auto startedAt = duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count();
    
    ifstream inputFile("loTSoFWOrds.txt");

    if(inputFile.fail()) {
        cerr << "No file loTSoFWOrds.txt" << endl;
        return -1;
    }
    
    // Read file, dedup and sort
    const auto lenComp = [](string a, string b) { return a != b && a.size() >= b.size(); };
    set<string, decltype(lenComp)> oset;
    for (string line; getline (inputFile, line);) {
        oset.insert(line);
    }
    inputFile.close();
    
    const auto alphaComp = [](string a, string b) { return a.compare(b) < 0; };
    vector<set<string, decltype(alphaComp)>*> vecOfSets;
    // Create groups
    int slack =-1, index=-1;
    for(auto word : oset){
        auto size = word.size();
        if(slack != size) {
            // Create new set
            slack = size;
            vecOfSets.push_back(new set<string, decltype(alphaComp)>);
            index++;
        }
        (*vecOfSets[index]).insert(word);
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
            totalSum += sumChars(word);
        }
        delete wordSet;
    }

    
    cout << "TotalSum: " << totalSum << endl;

    const auto timeTaken =  duration_cast<milliseconds>(system_clock::now().time_since_epoch()).count() - startedAt;
    cout << "Time taken:  " << timeTaken << "ms" << endl;
    
    return 0;
}

