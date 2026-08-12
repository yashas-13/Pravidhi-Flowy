# Pravidhi Flow

<p align="center">
  <strong>Your workspace. Your agents. Your data.</strong>
</p>

<p align="center">
  An open-source AI workspace for turning knowledge, projects, and repeatable work into executable flows.
</p>

<p align="center">
  <a href="https://github.com/yashas-13/Pravidhi-Flowy/stargazers">⭐ Star</a> ·
  <a href="https://github.com/yashas-13/Pravidhi-Flowy/issues">Issues</a> ·
  <a href="https://github.com/yashas-13/Pravidhi-Flowy/discussions">Discussions</a>
</p>

---

## ⚡ What is Pravidhi Flow?

Pravidhi Flow is an AI-native workspace built around a simple idea: **knowledge should be able to become action**.

Use one workspace for:

- 📝 Documents and knowledge
- 📊 Databases and structured information
- 🎯 Projects and tasks
- 🤖 Contextual AI assistance
- ⚡ Repeatable Flows and automation
- 🧩 Agents and integrations
- 🔐 Explicit permissions and data control

The long-term goal is not to build another AI chat panel. Pravidhi Flow is being evolved into a **workspace operating layer** where people can understand information, plan work, and safely execute actions from the same environment.

## 🧠 The Pravidhi model

```text
                    PRAVIDHI FLOW
                         │
          ┌──────────────┼──────────────┐
          │              │              │
      Workspace         AI           Automation
          │              │              │
   Docs / Tasks /     Context /      Flows / Agents
   Databases /        Planning       Triggers / Tools
   Projects           Memory         Approvals
          └──────────────┼──────────────┘
                         │
                  Control & Audit
```

### Workspace

A flexible foundation for documents, databases, projects, tasks, and knowledge.

### AI

AI should understand the active workspace context rather than forcing users to repeatedly copy and paste information into a chatbot.

### Agents

Agents will use explicit capabilities to read, reason, and perform workspace operations.

### Flows

Flows turn repeatable work into executable workflows with triggers, conditions, actions, approvals, retries, and execution history.

### Control

Pravidhi Flow is designed around user control: permissions, auditable actions, and a path toward self-hosted deployments.

---

## 🚀 Product direction

### 1. AI-native workspace

- Contextual AI panel
- Workspace-aware search
- Summarization and transformation
- Natural-language workspace creation
- Persistent, inspectable memory

### 2. Agent runtime

```text
User intent
    ↓
Plan
    ↓
Capability check
    ↓
Approval policy
    ↓
Execute tools
    ↓
Verify result
    ↓
Audit
```

Agents will not receive unrestricted access by default. Tool access and write operations should be capability-scoped.

### 3. Flow engine

```text
[Trigger]
    ↓
[Search / Fetch]
    ↓
[AI Analyze]
    ↓
[Condition]
   ↙      ↘
[Action] [Action]
   \      /
    [Verify]
       ↓
     [Audit]
```

### 4. Integrations

The architecture is intended to support native tools, APIs, webhooks, plugins, and MCP-based integrations without coupling the workspace to one provider.

---

## 🛠️ Technology

Pravidhi Flow currently builds on the mature Flutter/Rust workspace foundation inherited from the AppFlowy project.

- **Flutter** — cross-platform application UI
- **Rust** — native/core infrastructure
- **Dart** — application and UI logic
- **Protobuf** — structured service communication where used by the foundation

The current package name remains `appflowy` intentionally during the migration. A package/import rename will be handled separately after a complete dependency and generated-code audit.

---

## 🗺️ Roadmap

### Foundation

- [x] Establish Pravidhi Flow product positioning
- [x] Add branding migration rules
- [x] Separate product-facing identity from upstream technical identifiers
- [ ] Centralized Pravidhi design system
- [ ] Pravidhi application icons and launch assets

### Workspace experience

- [ ] New workspace shell
- [ ] Command center
- [ ] Unified search
- [ ] Contextual AI surface
- [ ] Mobile-first interaction improvements

### AI platform

- [ ] AI gateway abstraction
- [ ] Context engine
- [ ] Tool registry
- [ ] Agent runtime
- [ ] Capability-based permissions
- [ ] Memory layer
- [ ] Execution traces and audit events

### Flows

- [ ] Visual Flow builder
- [ ] Triggers
- [ ] Conditions
- [ ] Actions
- [ ] Scheduled execution
- [ ] Approval gates
- [ ] Retry/error policies
- [ ] Execution history

### Ecosystem

- [ ] MCP integrations
- [ ] GitHub integration
- [ ] Email/calendar integrations
- [ ] Developer center
- [ ] Agent and Flow templates
- [ ] Plugin/marketplace foundations

---

## 🏗️ Development

The repository contains a large existing Flutter/Rust workspace codebase. Before modifying shared foundation code, identify whether a change belongs to the upstream-derived foundation or the Pravidhi-owned platform layer.

### Recommended boundaries

```text
frontend/
├── appflowy_flutter/
│   ├── existing workspace foundation
│   └── pravidhi/
│       ├── ai/
│       ├── agents/
│       ├── flows/
│       ├── memory/
│       ├── permissions/
│       ├── integrations/
│       ├── command_center/
│       └── observability/
│
└── rust-lib/
    └── pravidhi/
        ├── agent_runtime/
        ├── workflow_engine/
        ├── permissions/
        └── integrations/
```

These boundaries are an architectural direction; they should be introduced incrementally rather than through a high-risk bulk move of upstream code.

---

## 🔐 Security principles

Pravidhi Flow is intended to make AI execution controllable rather than opaque.

1. Read access and write access are distinct capabilities.
2. Destructive actions require explicit policy handling.
3. Externally visible actions can require approval.
4. Agent executions should produce audit information.
5. Secrets must never be placed in prompts or normal execution logs.
6. Core workspace functionality should remain useful without AI.

---

## 🤝 Contributing

Contributions are welcome. For larger changes, please describe the user problem, affected subsystem, compatibility impact, and testing strategy before implementation.

When working on the Pravidhi layer, prefer small, isolated modules with explicit interfaces so upstream synchronization remains manageable.

---

## 📜 Upstream, licensing, and attribution

Pravidhi Flow is derived from the open-source AppFlowy codebase and retains the applicable upstream licensing and attribution requirements. Product-facing branding is being migrated to Pravidhi Flow, but upstream technical dependencies and required legal notices are not removed by this rebrand.

See [`LICENSE`](LICENSE) and [`docs/PRAVIDHI_BRAND.md`](docs/PRAVIDHI_BRAND.md) for the current project guidance.

## 📚 Project documentation

- [Pravidhi Flow Brand Foundation](docs/PRAVIDHI_BRAND.md)
- [Rebrand & Enhancement Design](docs/superpowers/specs/2026-08-12-pravidhi-flow-rebrand-design.md)

---

<p align="center">
  <strong>Pravidhi Flow — Think. Build. Automate.</strong>
</p>
