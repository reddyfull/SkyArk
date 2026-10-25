## 2024-10-25 - O(N^2) Array Concatenation Bottleneck in PowerShell
**Learning:** Using `+=` to build arrays inside loops leads to O(N^2) performance bottlenecks due to continuous array reallocation, especially noticeable on large datasets like Azure AD users or directory information.
**Action:** Replace `+=` loops with direct pipeline assignments (e.g., `$array = $items | foreach { ... }`) or use `System.Collections.Generic.List[T]` for efficient O(1) additions.
