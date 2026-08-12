# Pravidhi Flow Brand Foundation

## Product

**Pravidhi Flow** is an open-source AI workspace for turning knowledge, projects, and repeatable work into executable flows while keeping users in control of their data.

### Primary promise

> Your workspace. Your agents. Your data.

### Product pillars

- **Workspace** — documents, databases, projects, tasks, and knowledge.
- **AI** — contextual assistance grounded in the active workspace.
- **Agents** — capability-scoped automation that can read, plan, and execute.
- **Flows** — repeatable workflows with triggers, conditions, actions, approvals, and execution history.
- **Control** — explicit permissions, auditable execution, and self-hosting compatibility.

## Brand migration rules

This repository is derived from AppFlowy. Required upstream license and attribution obligations must remain intact. Product-facing branding should use Pravidhi Flow; upstream technical dependencies and legal references must not be renamed blindly.

### Product-facing terms

| Legacy | Pravidhi Flow |
|---|---|
| AppFlowy | Pravidhi Flow |
| AppFlowy AI | Pravidhi AI |
| AppFlowy workspace | Pravidhi workspace |
| AppFlowy Flow | Pravidhi Flow |

### Do not blindly replace

- dependency package names
- upstream repository URLs
- Rust/Flutter module names that would break APIs
- license text and required attribution
- generated files
- third-party dependency identifiers

## UX direction

Pravidhi Flow should feel like an AI-native command center rather than a conventional document editor. The interface should prioritize fast navigation, contextual AI, keyboard accessibility, dense information architecture, and progressive disclosure.

## Design principles

1. AI actions must be contextual to the current workspace state.
2. Destructive or externally visible agent actions require explicit capability and policy checks.
3. Every agent execution should be observable and auditable.
4. Core workspace functionality must remain useful without AI.
5. Upstream synchronization should remain practical; Pravidhi-owned capabilities should be isolated from upstream foundations.
