## 2024-05-24 - String Pipeline Counting Bottleneck & Logic Bug
**Learning:** Using `Where-Object` directly on a string (e.g. `$_ -eq ','`) treats the whole string as a single object, failing to count characters and introducing massive pipeline overhead inside loops.
**Action:** Use native `-split` operator (`([string]$var -split ',').Count - 1`) and array filtering (`@([string]$var -split ',') -like 'pattern'`) instead of `Where-Object | Measure-Object` for strings to fix logic bugs and achieve a 10x performance boost.
