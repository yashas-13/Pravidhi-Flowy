/// Capability vocabulary for Pravidhi agents.
///
/// Capabilities are intentionally separate from UI roles. An execution
/// policy can map these capabilities to workspace permissions and approval
/// requirements without coupling the agent runtime to Flutter widgets.
enum PravidhiAgentCapability {
  readWorkspace,
  searchWorkspace,
  createContent,
  updateContent,
  deleteContent,
  executeFlow,
  callExternalIntegration,
}

enum PravidhiApprovalPolicy {
  never,
  onExternalAction,
  onWrite,
  always,
}

class PravidhiAgentPolicy {
  const PravidhiAgentPolicy({
    this.capabilities = const <PravidhiAgentCapability>{},
    this.approvalPolicy = PravidhiApprovalPolicy.onExternalAction,
  });

  final Set<PravidhiAgentCapability> capabilities;
  final PravidhiApprovalPolicy approvalPolicy;

  bool allows(PravidhiAgentCapability capability) =>
      capabilities.contains(capability);
}
