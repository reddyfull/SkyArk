## 2024-05-24 - Array Matching Pipeline Overhead
**Learning:** In PowerShell, using `Where-Object {$_ -eq 'pattern'} | Measure-Object` on a scalar string treats the entire string as a single item in the pipeline. Replacing this with string methods like `.Split()` breaks on `$null` inputs.
**Action:** Use native array casting `@(@($var) -eq 'pattern').Count` to preserve exact behavior (including scalar handling and null safety) while eliminating pipeline instantiation overhead.
