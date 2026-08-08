## 2024-05-15 - Array Concatenation Bottleneck
**Learning:** Using `+=` for array concatenation inside loops in PowerShell allocates a new array each time, causing severe O(N^2) bottlenecks on large datasets.
**Action:** Prefer initializing a list (`$list = New-Object System.Collections.Generic.List[System.Object]`) and using `.Add()` method to achieve O(N) performance.
## 2024-05-15 - Measure-Object Bottleneck
**Learning:** In PowerShell 3.0+, `.Count` can be accessed on any object directly (returning 0 for `$null`, 1 for scalar, length for array). Piping objects to `Measure-Object` for simple counting introduces enormous pipeline overhead (e.g., ~2200ms vs ~20ms for 1000 iterations).
**Action:** Prefer `$collection.Count` instead of `($collection | Measure-Object).Count` for significant performance gains without losing safety.
