## 2024-05-24 - PowerShell Array Concatenation Bottleneck
**Learning:** In PowerShell, using `+=` to append to an array within a loop allocates a new array each time, causing an O(N^2) performance bottleneck. This becomes extremely visible when iterating over thousands of AD entities.
**Action:** When accumulating results in PowerShell loops, avoid `+=`. Instead, assign the output of the loop or pipeline directly to a variable (e.g. `$results = foreach ($x in $y) { ... }`). This achieves O(N) performance by letting PowerShell internally manage a collection that avoids constant reallocation.
