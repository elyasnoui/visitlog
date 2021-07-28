//
// Created by elyas on 25/07/2021.
//

#include "visitor.h"
#include <algorithm>

using namespace std;

// Compares two strings alphabetically
bool compareVisitors(const visitor& lhs, const visitor& rhs) {
    return lhs.getName() < rhs.getName();
}

// Sorts the vector of visitors alphabetically using 'compareVisitors' via <algorithms> library
void sortVisitors(vector<visitor>& visitors) {
    sort(visitors.begin(), visitors.end(), compareVisitors);
}