## 2024-08-09 - [Optimize Where-Object Pipeline in AWStealth]
**Learning:** Using `| Where-Object | Measure-Object` inside loops introduces massive pipeline overhead and can hide logic bugs when operating on single strings (treating the string as a single object instead of character iteration).
**Action:** Replace `Where-Object` with array filtering logic like `[string]$var -split` and direct `.Count` property access. This dramatically reduces pipeline overhead and fixes unintended behavior when used for character counting.
