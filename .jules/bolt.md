## 2024-05-18 - [PowerShell Pipeline Count Overhead]
**Learning:** PowerShell pipeline operations (`| Measure-Object`) carry substantial overhead. Using `.Count` property on explicitly casted arrays `@($var).Count` bypasses the pipeline entirely and reduces counting execution time significantly (e.g., from ~2300ms down to ~15ms on 1000 items). Using string native `.Split()` is faster than piping to `Where-Object`.
**Action:** Replace `Where-Object` and `Measure-Object` on collections where only counting is required, with native methods like `.Split().Count` or `@(@($var) -like '...').Count`.
