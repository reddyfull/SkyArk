## $(date +%Y-%m-%d) - Replace Measure-Object pipeline with native array Count
**Learning:** PowerShell's pipeline (`| Measure-Object`) adds severe performance overhead inside loops (~10x slower). Additionally, piping a string to `Where-Object {$_ -eq ','}` evaluates the entire string as a single object (always resulting in 0), which introduces logic bugs.
**Action:** Always prefer native array counting `@($var).Count` and string methods like `.Split(',').Count - 1` over pipeline filtering for dramatic speedups and correct semantic evaluation.
