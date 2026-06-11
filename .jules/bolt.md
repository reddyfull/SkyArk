## 2024-06-11 - [Optimize AzureStealth Output Building]
**Learning:** In PowerShell, using the `+=` operator inside a loop to construct a large array of complex objects is highly inefficient due to array reallocation at each step. This causes an O(N^2) time complexity.
**Action:** When building collections iteratively (such as lists or PSObjects), prefer pipeline assignment directly into a variable (e.g. `$myArray = foreach ($item in $collection) { ... }`) to avoid repeated copying.
