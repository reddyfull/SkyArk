## 2024-06-25 - [PowerShell Pipeline Overhead & Logic Bugs]
**Learning:** Using `Measure-Object` in the PowerShell pipeline is significantly slower than native `.Count` property access for arrays (`@($arr).Count`). Also, piping strings into `Where-Object` does not unroll characters, leading to logical bugs (e.g. `$str | Where-Object {$_ -eq ','}` silently returning 0 instead of character occurrences).
**Action:** Replace `Measure-Object` with `@().Count` for O(1) evaluation without pipeline overhead. For string matching counts, use `.Split().Count - 1` or `[regex]::Matches().Count` instead.
