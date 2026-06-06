## 2024-05-16 - [Fix PowerShell Array Concatenation Bottleneck]
**Learning:** Array concatenation in PowerShell using `+=` inside loops allocates a new array each time, causing severe O(N^2) performance degradation, especially for accumulating large datasets like entity dictionaries in `AzureStealth.ps1`.
**Action:** Replaced `+=` operations with direct pipeline assignment (e.g., `$array = $dict.Values | foreach { [PSCustomObject]@{...} }`) to achieve O(N) performance and eliminate the bottleneck.
