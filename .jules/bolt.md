## 2024-10-26 - Array Measure-Object Overhead
**Learning:** In PowerShell 3.0+, piping variables (which might be scalars or arrays) to `Measure-Object` and getting `.count` introduces pipeline overhead and can cause logic bugs.
**Action:** Access the `.Count` property directly on variables or expressions instead of piping to `Measure-Object`. To safely remove pipeline overhead while preserving array evaluation semantics (even for nulls or scalars), force the operand into an array using `@(@($var))`.
