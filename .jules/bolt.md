## 2024-05-24 - [Avoid O(N^2) Array Concatenation via `+=` in Loops]
**Learning:** PowerShell arrays are immutable, meaning using `+=` to append to an array within a loop allocates a new, larger array each time, causing a significant O(N^2) performance bottleneck on large datasets like cloud configuration objects.
**Action:** Replace `$array += $element` with `[System.Collections.Generic.List[PSObject]]` and its `.Add()` method in iterative loops to achieve O(N) performance while maintaining property enumeration capabilities downstream.
