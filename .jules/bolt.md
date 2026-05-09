## 2024-05-24 - [Optimize PowerShell array concatenation]
**Learning:** [Using += for array concatenation inside loops in PowerShell causes severe O(N^2) bottlenecks on large datasets because it allocates a new array each time.]
**Action:** [Use direct pipeline assignment (e.g., $array = ... | foreach { ... }) to achieve O(N) performance next time.]