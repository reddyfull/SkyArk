## 2024-07-25 - Optimize array concatenation and pipeline count overhead
**Learning:** PowerShell pipeline processing (e.g. `| Measure-Object` and `Where-Object`) introduces significant overhead in tight loops. Additionally, using `+=` on standard arrays causes O(N^2) reallocation overhead.
**Action:** Replace `Where-Object | Measure-Object` counting with native array cast counting `@(@($var) -eq 'foo').Count`, replace simple pipeline counting with `@($var).Count`, and replace `+=` array concatenation with `System.Collections.Generic.List[System.String]` using `.Add()`.
