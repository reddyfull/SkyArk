## 2024-06-25 - Avoid `+=` when building arrays in PowerShell
**Learning:** In PowerShell, using the `+=` operator on an array allocates a new array in memory and copies the elements over, resulting in $O(N^2)$ time complexity. This causes major performance bottlenecks when parsing large data sets (like Azure or AWS environments).
**Action:** Use pipeline assignment instead: `$myArray = @( 1..1000 | foreach { ... } )` or list assignments.
