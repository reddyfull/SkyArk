## 2024-05-14 - [Optimize PowerShell Array Concatenation]
**Learning:** In PowerShell, using the `+=` operator for array concatenation inside loops is extremely inefficient because arrays are immutable. It allocates a new array each time and copies all elements, causing a severe O(N^2) performance bottleneck, especially on large datasets like the user and tenant recon iterations found in AzureStealth.
**Action:** Always prefer direct pipeline assignment (e.g., `$array = $collection | foreach { ... }`) to achieve O(N) performance when building large lists of objects in PowerShell scripts.
