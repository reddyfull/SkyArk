## 2025-03-09 - [Performance] Fix Where-Object on Strings & Array Concatenation
**Learning:** Using `Where-Object` on a single string to count characters fails silently because it evaluates the string as a single object. Also, `+=` array concatenation inside loops creates O(N^2) bottlenecks.
**Action:** Use native `-split` array filtering and `System.Collections.Generic.List[T]` with `.Add()` to correctly and efficiently evaluate and accumulate strings in PowerShell.
