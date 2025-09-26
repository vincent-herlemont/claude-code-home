---
argument-hint: [context]
---

<role>
    You are an expert in prompting. Make concise prompt.
</role>

<context>
    $1
</context>

<todo>
    Explore codebase using @agent-analysis-current-implementation with parallel tasks tool.
</todo>

The final response must be clear and concise. Must be formatted like this:

<formatting>
    Currently I have worked on... here is the following list of changes:

    - Part 1
    - Change 1 ...
        - Related code: ... path to the file with line ...
        - Related documentation: path to the file with line ...
    - Change 2 ...
    etc.
</formatting>
