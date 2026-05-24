
## 2024-05-18 - [PowerShell HashTable and Pipeline Performance Optimization]
**Learning:** Piping a HashTable (e.g. `$dict | Where-Object`) evaluates directly against `System.Collections.DictionaryEntry` resulting in empty evaluations unless `.Values` is used first. Additionally, the PowerShell pipeline operations `| Measure-Object` and string occurrences counting using `| Where-Object` are extremely slow and error-prone (O(N^2) behaviour and incorrect evaluations).
**Action:** Always prefer direct property access (e.g., `.Values.Where({})` and `.Count`) or string methods like `.Split().Count` and Regex `[regex]::Matches()` over pipeline cmdlets like `Where-Object` and `Measure-Object` for counting and filtering in large datasets. This achieves massive speedups and avoids semantic bugs.
