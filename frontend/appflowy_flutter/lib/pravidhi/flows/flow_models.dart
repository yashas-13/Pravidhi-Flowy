/// Stable domain primitives for Pravidhi Flows.
///
/// This layer intentionally contains no Flutter dependencies. UI, persistence,
/// scheduling, and execution engines can evolve independently around it.

enum PravidhiFlowTriggerType {
  manual,
  scheduled,
  webhook,
  workspaceEvent,
}

enum PravidhiFlowNodeType {
  trigger,
  action,
  condition,
  ai,
  approval,
  verification,
}

enum PravidhiFlowRunStatus {
  queued,
  running,
  waitingForApproval,
  succeeded,
  failed,
  cancelled,
}

class PravidhiFlowDefinition {
  const PravidhiFlowDefinition({
    required this.id,
    required this.name,
    required this.trigger,
    required this.nodes,
    this.enabled = false,
  });

  final String id;
  final String name;
  final PravidhiFlowTrigger trigger;
  final List<PravidhiFlowNode> nodes;
  final bool enabled;
}

class PravidhiFlowTrigger {
  const PravidhiFlowTrigger({
    required this.type,
    this.configuration = const <String, Object?>{},
  });

  final PravidhiFlowTriggerType type;
  final Map<String, Object?> configuration;
}

class PravidhiFlowNode {
  const PravidhiFlowNode({
    required this.id,
    required this.type,
    required this.name,
    this.configuration = const <String, Object?>{},
  });

  final String id;
  final PravidhiFlowNodeType type;
  final String name;
  final Map<String, Object?> configuration;
}

class PravidhiFlowRun {
  const PravidhiFlowRun({
    required this.id,
    required this.flowId,
    required this.status,
  });

  final String id;
  final String flowId;
  final PravidhiFlowRunStatus status;
}
