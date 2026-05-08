## 2024-11-20 - [Measure-Object vs .Count Performance in PowerShell]
**Learning:** Using `Measure-Object` in PowerShell incurs significant pipeline overhead, especially inside loops or applied to large arrays, turning simple counting operations into bottlenecks. Accessing the `.Count` property directly avoids this and returns accurate results for arrays, scalars, and `$null`.
**Action:** Replace `Measure-Object` with direct `.Count` property access whenever counting elements to improve execution speed and reduce CPU usage.
