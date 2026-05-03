## 2024-05-15 - Array Concatenation Bottleneck
**Learning:** Using the `+=` operator to append elements to an array in a loop (e.g., `$array += $element`) creates a new array and copies all existing elements in memory during every iteration. In large datasets like Azure/AWS entity lists, this causes severe O(N²) performance bottlenecks.
**Action:** Always replace `+=` array concatenation loops with direct pipeline assignments (e.g., `$array = $collection | foreach { $_ }`) or use `[System.Collections.Generic.List[type]]` with the `.Add()` method for dynamic sizing to ensure O(N) complexity.
