## 2024-05-24 - Efficient string counting in PowerShell
**Learning:** Using `| Where-Object {$_ -eq ','} | Measure-Object` on a string in PowerShell incorrectly evaluates the entire string as a single object (returning 0) and is O(N) over pipeline.
**Action:** Use `.Split(',').Count - 1` or `[regex]::Matches($string, 'pattern').Count` for correct and high-performance substring counting.
