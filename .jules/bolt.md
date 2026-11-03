## 2024-11-20 - Optimize filtering arrays
**Learning:** Found a performance bottleneck where `Where-Object | Measure-Object` pipelines were used to count element occurrences. This adds significant pipeline overhead.
**Action:** Replace `Where-Object | Measure-Object` pipelines with native array filtering operators (e.g. `@(@($var) -eq ',').Count`). This drastically reduces pipeline overhead and handles `$null` (returns 0), scalars (returns 1), and arrays (returns length safely).
