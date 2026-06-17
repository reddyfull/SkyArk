## 2024-05-24 - [Avoid Pipeline Overhead in Loops]
**Learning:** [Using pipeline operators like Where-Object and Measure-Object within tight loops, especially when checking scalar strings, adds severe performance bottlenecks due to pipeline initialization overhead.]
**Action:** [Use direct string methods like .Split() and array wrappers @() combined with native operators like -like to achieve O(N) performance on large datasets instead of relying on the pipeline.]
