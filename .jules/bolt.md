## 2024-05-18 - [AWStealth String Parsing Performance]
**Learning:** In PowerShell, using `-match` directly on a scalar string evaluates to a boolean `$true` or `$false`. Therefore, wrapping it in an array to count matches like `@($scalar -match 'pattern').Count` will incorrectly always yield `1` (for either `$true` or `$false` wrapped in an array).
**Action:** When replacing pipeline filtering with `-match` on potentially scalar elements, always ensure type safety by explicitly wrapping the left-hand operand in an array *before* matching: `@(@($arrayOrScalar) -match 'pattern').Count`.
