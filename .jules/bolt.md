## 2026-06-28 - [PowerShell Array Performance Bottleneck]
**Learning:** Using `+=` to construct or append to arrays (`@()`) within loops in PowerShell causes severe O(N²) memory allocation and CPU overhead because a new array is allocated and elements are copied on every iteration.
**Action:** Always replace dynamic array concatenation loops with `[System.Collections.Generic.List[T]]::new()` and the `.Add()` method to achieve O(N) performance, while retaining full member enumeration capabilities.
