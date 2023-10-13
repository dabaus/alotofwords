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

using namespace std;
namespace fs = std::filesystem;

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
    
    ifstream InputFile("loTSoFWOrds.txt");

    if(InputFile.fail()) {
        cerr << "No file loTSoFWOrds.txt" << endl;
        return -1;
    }
    
    // Read file, dedup and sort
    auto lenComp = [](string a, string b) { return a != b && a.size() >= b.size(); };
    set<string, decltype(lenComp)> oset;
    for (string line; getline (InputFile, line);) {
        oset.insert(line);
    }
    InputFile.close();
    
    auto alphaComp = [](string a, string b) { return a.compare(b) < 0; };
    vector<set<string, decltype(alphaComp)>*> vecOfSets;
    // Create groups
    int slack =-1, index=-1;
    for(auto iter = oset.begin(); iter!=oset.end(); ++iter){
        auto word = *iter;
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
    for(auto iter = vecOfSets.begin(); iter != vecOfSets.end(); ++iter) {
        auto wordSet = *iter;
        int n = 0, size = wordSet->size();
        for(auto iter2 = wordSet->begin(); iter2 != wordSet->end(); ++iter2) {
            n++;
            if(iter2 == wordSet->begin()) { continue; } // Skip first
            if(n == size) { continue; } // Skip last
            totalSum += sumChars(*iter2);
        }
        delete wordSet;
    }
    cout << "TotalSum: " << totalSum << endl;
    
    return 0;
}

