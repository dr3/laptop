---
applyTo: '**/*.ts, **/*.js, **/*.json, **/*.spec.ts, **/*.test.ts'
description: 'This file provides comprehensive instructions for GitHub Copilot to assist in following best practices in Node.js, TypeScript, and JavaScript development.'
---

# Node, Typescript & Javascript Development Best Practices

## General Requirements
    Use modern technologies as described below for all code suggestions. Prioritize clean, maintainable code with appropriate comments.

### COMMENTS
- Only add comments when necessary to explain complex logic, assumptions, or decisions. Avoid redundant comments that restate what the code already expresses.
- Use JSDoc or TSDoc style comments for functions, classes, and modules to provide clear documentation of parameters, return values, and behavior.
- For inline comments, use them sparingly to clarify non-obvious code sections, but ensure they add value and do not clutter the code.

### LOGGING
- Only use console logging for scripts. For applications, find and use any structured logging library used in the project to ensure consistent log formatting and levels.

### LINTING & FORMATTING
- Adhere to the project's established linting and formatting rules. If none exist, follow widely accepted conventions such as those from ESLint and Prettier, and ensure consistent code style throughout the codebase.
- For TypeScript, ensure type annotations are used effectively to enhance code clarity and maintainability, and avoid using `any` unless absolutely necessary.

### REUSE
- Prioritize code reuse by identifying and utilizing existing functions, modules, or libraries within the project before creating new implementations. This promotes consistency and reduces redundancy.

### DEPENDENCIES
- In scripts or applications, prefer built-in Node.js modules and standard libraries over external dependencies.
- For scripts, where suitable options don't already exist, use an external library but ensure it is well-maintained, widely used, and does not introduce unnecessary bloat or security risks.
- For applications, use existing dependencies in the project when possible, and if a new dependency is needed, ensure it is justified, well-maintained, and does not introduce unnecessary bloat or security risks. When adding a new dependency, ask the user for confirmation and provide a brief rationale for its inclusion.

### React
- When creating new react components use the format `const ComponentName: React.FC<Props> = (props) => { ... }` and ensure to include appropriate type annotations for props and state. Then export the component as default.
- For existing components, follow the established format and conventions used in the project.

## JavaScript Requirements
    - **Features to Use**:
    - Arrow functions
    - Template literals
    - Destructuring assignment
    - Spread/rest operators
    - Async/await for asynchronous code
    - Object shorthand notation
    - Optional chaining (`?.`)
    - Nullish coalescing (`??`)
    - Array methods (`map`, `filter`, `reduce`, `flatMap`, etc.)
    - **Avoid**:
    - BigInt for large integers
    - `Promise.allSettled()`
    - `String.prototype.matchAll()`
    - `globalThis` object
    - Private class fields and methods
    - Export * as namespace syntax
    - Dynamic imports
    - Classes
    - `var` keyword (use `const` and `let`)
    - jQuery or any external libraries
    - Callback-based asynchronous patterns when promises can be used
    - Internet Explorer compatibility
    - Legacy module formats (use ES modules)
    - Limit use of `eval()` due to security risks
    **Error Handling**:
    - Use `try-catch` blocks **consistently** for asynchronous and API calls, and handle promise rejections explicitly.
    - Differentiate among:
    - **Network errors** (e.g., timeouts, server errors, rate-limiting)
    - **Functional/business logic errors** (logical missteps, invalid user input, validation failures)
    - **Runtime exceptions** (unexpected errors such as null references)
    - Provide **user-friendly** error messages (e.g., “Something went wrong. Please try again shortly.”) and log more technical details to dev/ops (e.g., via a logging service).
    - Consider a central error handler function or global event (e.g., `window.addEventListener('unhandledrejection')`) to consolidate reporting.
    - Carefully handle and validate JSON responses, incorrect HTTP status codes, etc.
