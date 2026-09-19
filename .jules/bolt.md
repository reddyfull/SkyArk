## 2024-05-24 - [Optimize string counting and fix logic bug in AWStealth]
**Learning:** In PowerShell, using `Where-Object` on a single string (e.g., `$string | Where-Object {$_ -eq ','}`) evaluates the entire string as a single object and incorrectly returns nothing (count = 0), leading to logic bugs. It is also very slow due to pipeline overhead.
**Action:** Use the `-split` operator combined with a string cast (e.g., `([string]$var -split ',').Count - 1`) to correctly count occurrences of a delimiter within a string and improve performance by avoiding the pipeline overhead.
