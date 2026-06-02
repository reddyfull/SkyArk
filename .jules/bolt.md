## 2024-05-24 - PowerShell Measure-Object Pipeline Overhead
**Learning:** Piping to `Measure-Object` for simple array counting (`$array | Measure-Object`) has severe overhead compared to direct property access (`$array.Count`) or array filtering (`@(@($array) -eq 'val').Count`). A quick benchmark showed 2435ms vs 8ms for 1000 iterations.
**Action:** Replaced instances of `Measure-Object` in AWStealth.ps1 with `.Count` property accesses and native array filtering to eliminate pipeline latency and improve script performance on large AWS environments.
