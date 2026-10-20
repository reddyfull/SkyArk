## 2024-10-20 - Avoid PowerShell Pipeline Overhead
**Learning:** Using `Where-Object | Measure-Object` in a loop creates significant pipeline overhead (can take ~800ms for 1000 items), while native array wrapping and filtering (e.g. `@(@($var) -eq ',').Count`) accomplishes the same in ~30ms and correctly handles nulls and scalars.
**Action:** Use native array filtering operators `@(@($var) -operator value)` instead of the pipeline when counting or filtering simple primitive values or strings.
