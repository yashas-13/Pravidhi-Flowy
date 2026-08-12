# Pravidhi Flow Rebrand & Enhancement Design

## Goal

Evolve `yashas-13/Pravidhi-Flowy` from an AppFlowy-derived fork into a distinct Pravidhi Flow product without destabilizing the Flutter/Rust foundation or making upstream synchronization unnecessarily difficult.

## Scope

### Phase 1
- Establish Pravidhi Flow product identity and positioning.
- Replace product-facing README and package description.
- Add a maintained brand contract documenting safe and unsafe branding migrations.
- Establish a Pravidhi-owned architecture boundary for future AI, agent, flow, permissions, and observability features.

### Phase 2
- Introduce a centralized Pravidhi design system.
- Redesign workspace shell and command navigation.
- Add contextual AI surfaces.

### Phase 3
- Add agent runtime, capability-based permissions, execution audit, and Flow engine.

### Phase 4
- Add integrations, developer center, mobile-native flows, and marketplace primitives.

## Architectural rule

Preserve upstream technical identifiers where renaming them would create needless breakage. Product-facing names, assets, application metadata, documentation, and UX should use Pravidhi Flow. Required upstream license and attribution obligations remain intact.

## Target layers

```text
Pravidhi Experience
        |
Pravidhi Platform
  | AI | Agents | Flows | Memory | Permissions | Audit
        |
Existing Workspace Foundation
  | Flutter UI | Editor | Database | Sync | Rust
```

## Safety model

Agent actions must resolve through explicit capabilities and policies. Destructive or externally visible actions must support approval gates. Execution history should record intent, tools, policy decisions, outcome, and failure information without exposing secrets.

## Success criteria

- Product-facing README clearly identifies Pravidhi Flow.
- New contributors can distinguish Pravidhi-owned code from upstream foundation code.
- Branding migration does not require unsafe global replacement of dependency/package identifiers.
- The architecture leaves clear boundaries for AI/agent/flow features.
- Existing workspace functionality remains the compatibility baseline.
