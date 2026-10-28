## 2024-10-28 - Optimize Array Element Counting in PowerShell
**Learning:** Using pipeline cmdlets (`Where-Object` combined with `Measure-Object`) for simple array filtering and counting inside loops is significantly slower than using native array filtering operations (e.g., `@(@($array) -eq 'match').Count`). Native filtering avoids pipeline overhead and drastically speeds up execution inside hot loops.
**Action:** Replace `$count = ($array | Where-Object {$_ -eq 'x'} | Measure-Object).Count` with native array filtering such as `@(@($array) -eq 'x').Count` in hot loops.
