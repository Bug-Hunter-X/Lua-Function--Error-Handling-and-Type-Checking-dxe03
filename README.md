# Lua Function: Error Handling and Type Checking

This example demonstrates a common issue in Lua programming: handling potential errors in functions.  Many Lua errors, especially those concerning type mismatches, can cause unexpected crashes if not caught.

The file `bug.lua` shows an example with potential issues, while `bugSolution.lua` presents a more robust solution with comprehensive error handling.

**Key improvements in `bugSolution.lua`:**
* Type checking before performing operations to avoid type-related errors.
* Explicit error handling using the `error()` function to provide informative messages and graceful failure.

This repository highlights the importance of robust error handling to improve code reliability and prevent unexpected crashes in Lua applications.