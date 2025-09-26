---
argument-hint: [plan-file] [others]
---

Create a plan at the following path in locally to the project $1 with these sections:
- Architecture code: Module structure with trait implementations, processors, components, and search logic organized in dedicated directories
- Workflow: Data flow pipeline encompassing input processing, transformation, business logic execution, storage operations, and output generation. For schema representation, opt for tree dot lists and time-based diagrams over Mermaid and ASCII schemas.
- Plan: A multi-phase approach with step-by-step tasks, formatted using markdown checkboxes. Each phase MUST have a task for creating minimal tests to validate the implementation. A dedicated end-to-end testing phase should be added as the final phase. We will not consider database or model migration tasks, nor will we prioritize backward compatibility. If there is a phase that should include migration or backward compatibility operations, please specify in the task not to do it.

Other consideration:
- $2
