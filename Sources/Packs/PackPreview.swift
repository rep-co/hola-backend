import Tagged

public struct PackPreview: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let title: String
  public let description: String

  public init(id: ID, title: String, description: String) {
    self.id = id
    self.title = title
    self.description = description
  }
}

extension Pack {
  public var preview: PackPreview {
    .init(
      id: .init(self.id.rawValue),
      title: self.title,
      description: self.description)
  }
}
