## 2024-05-23 - PowerShell Array Concatenation Bottleneck
**Learning:** Using the `+=` operator inside loops for array concatenation in PowerShell creates a severe O(N^2) bottleneck. PowerShell allocates a new array of size N+1 on every iteration, which is incredibly slow for large datasets like Azure Entra ID users.
**Action:** Always replace `$array += $_` in loops with direct pipeline assignment: `$array = [source] | foreach { $_ }` to eliminate pipeline overhead and array reallocation, achieving O(N) performance.
