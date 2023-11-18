import Tagged

public struct Theme: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let name: String
  public let emoji: String

  public init(
    id: ID,
    name: String,
    emoji: String
  ) {
    self.id = id
    self.name = name
    self.emoji = emoji
  }
}

extension Theme {
  public static let russia = Theme(
    id: 1,
    name: "russia",
    emoji: "🇷🇺"
  )

  public static let cookie = Theme(
    id: 2,
    name: "cookie",
    emoji: "🍪"
  )
}
