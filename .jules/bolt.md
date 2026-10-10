## 2024-06-25 - Replace Measure-Object and Pipeline string matching with native operators
**Learning:** Using `Measure-Object` and `Where-Object` on scalars/strings in PowerShell creates huge pipeline overhead (50x slower) and can cause logic bugs (e.g., `Where-Object` on a single string evaluating as a 1-item array and returning nothing).
**Action:** Always use native array wrapping `property.Count` (`@($var).Count`) instead of `Measure-Object`, use `-split` for counting delimiter occurrences, and array operators (`@(@($var) -like 'pattern')`) for filtering.
