## 2024-05-18 - [Fix Policy Counting Logic Bug and Performance Overhead]
**Learning:** Piping a string directly to `Where-Object` to count characters evaluates the entire string as a single object, leading to false counts and significant pipeline overhead.
**Action:** Use the `-split` operator to correctly count character occurrences and use array native operators like `@(array -like 'pattern')` for fast and accurate string enumeration without pipeline overhead.
