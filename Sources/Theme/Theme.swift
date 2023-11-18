public struct Theme: Codable, Sendable {
  public let mainEmoji: String
  public let secondaryEmoji: String
  public let tertiaryEmoji: String

  public init(
    mainEmoji: String,
    secondaryEmoji: String,
    tertiaryEmoji: String
  ) {
    self.mainEmoji = mainEmoji
    self.secondaryEmoji = secondaryEmoji
    self.tertiaryEmoji = tertiaryEmoji
  }
}

extension Theme {
  public static let russiaITPower = Theme(
    mainEmoji: "💻",
    secondaryEmoji: "🇷🇺",
    tertiaryEmoji: "💪🏻"
  )

  public static let popcorn = Theme(
    mainEmoji: "🍿",
    secondaryEmoji: "🍪",
    tertiaryEmoji: "🎈"
  )

  public static let vacation = Theme(
    mainEmoji: "🐳",
    secondaryEmoji: "🛟",
    tertiaryEmoji: "🚢"
  )

  public static let happyNewYear = Theme(
    mainEmoji: "🎅🏻",
    secondaryEmoji: "🎄",
    tertiaryEmoji: "🥳"
  )
}
