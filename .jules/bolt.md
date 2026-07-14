
## 2024-07-14 - [Measure-Object and Pipeline Overhead]
**Learning:** In PowerShell, using the pipeline (`|`) with `Measure-Object` on arrays and scalar values adds substantial execution overhead (~16,000ms vs ~15ms for 1000 iterations). Furthermore, piping a string scalar directly to a native filter like `Where-Object` treats it as a single-item sequence, causing delimiter counting (e.g., `Where-Object {$_ -eq ','}`) to fail or count incorrectly.
**Action:** When calculating length/count, ALWAYS use direct property access wrapped in an array literal for safety, i.e., `@($myArray).Count` instead of `$myArray | Measure-Object`. When counting delimiters in strings, avoid `Where-Object` completely and use `.Split(',').Count - 1`.
