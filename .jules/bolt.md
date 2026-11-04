## 2024-11-04 - Native Array Filtering in PowerShell
**Learning:** Using `Where-Object` on a single string to count characters evaluates the entire string as a single object (returning 0). When optimizing to remove pipeline overhead, replacing it with `.Split()` would break this original scalar evaluation behavior (and throw on `$null`).
**Action:** When replacing pipeline operators for performance while strictly preserving existing scalar evaluation semantics, force the operand into an array and use PowerShell's native array filtering operators (e.g., `@(@($var) -eq ',').Count`).
