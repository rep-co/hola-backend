import Tagged

public struct Card: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let emoji: String
  public let text: String

  public init(id: ID, emoji: String, text: String) {
    self.id = id
    self.emoji = emoji
    self.text = text
  }
}
