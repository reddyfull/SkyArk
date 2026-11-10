## 2025-02-18 - Replacing arrays and measure object with efficient list and array operations
**Learning:** Found O(N^2) bottlenecks when using `+=` array concatenations inside loops in `AWStealth.ps1` and `AzureStealth.ps1`. Also `| Measure-Object` causes pipeline overhead compared to the `.Count` property.
**Action:** Replace `$array += $element` with `System.Collections.Generic.List` and `.Add()`. Replace `$($var | Measure-Object).count` with `@($var).Count`.
