## 2025-02-14 - Measure-Object Performance Overhead in PowerShell
**Learning:** Using `| Measure-Object` inside loops for counting elements creates a massive pipeline overhead in PowerShell (taking ~800ms vs ~20ms per 100k items).
**Action:** Use native array counting `@(@(var)).Count` or string `.Split()` methods to replace `Measure-Object` and `Where-Object` combinations for significant performance gains without breaking logic.
