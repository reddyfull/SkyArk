## 2024-05-24 - String Counting Optimization in PowerShell
**Learning:** Using `Where-Object` on a single string (e.g., `Where-Object {$_ -eq ','}`) to count character occurrences fails because PowerShell evaluates the entire string as one object, returning nothing. Additionally, piping to `Measure-Object` incurs significant overhead.
**Action:** Use the `-split` operator combined with array counting (e.g., `([string]$var -split ',').Count - 1`) to correctly identify and count occurrences of a delimiter within a string, which also provides a massive performance boost over pipelines.
