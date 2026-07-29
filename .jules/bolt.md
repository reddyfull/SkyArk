## 2025-03-01 - Avoid Measure-Object for counting
**Learning:** Using `Measure-Object` and its `.count` property creates significant pipeline overhead when all we need is the element count.
**Action:** Use `.Count` property directly on variables or expressions instead of piping to `Measure-Object` for simple element counting. This drastically reduces pipeline overhead.
