# Bolt's Journal

## 2026-10-04 - [PowerShell String Operations Bug]
**Learning:** Using `Where-Object` on a single string to count characters evaluates the entire string as one object, returning nothing. It's also a logic bug to use string `Where-Object` for matching patterns like `*-Thr*` on string variables containing multiple values concatenated with commas.
**Action:** Use `-split` instead of `Where-Object` to properly count delimiters, like `($var -split ',').Count - 1`. Use `-split` and `-like` to match patterns inside string variables containing multiple values.
