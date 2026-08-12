/// Product-facing identity and UX constants for Pravidhi Flow.
///
/// Keep these values independent from upstream package identifiers so the
/// product can be rebranded without destabilising existing imports.
abstract final class PravidhiBrand {
  static const productName = 'Pravidhi Flow';
  static const shortName = 'Pravidhi';
  static const tagline = 'Your workspace. Your agents. Your data.';
  static const description =
      'An open-source AI workspace for turning knowledge, projects, and repeatable work into executable flows.';

  static const commandShortcutLabel = '⌘K / Ctrl+K';
}

/// Semantic surface names used by the Pravidhi product layer.
enum PravidhiSurface {
  workspace,
  ai,
  agents,
  flows,
  integrations,
  search,
  settings,
}
