import IdentifiedCollections
import Tagged

public struct Theme: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let mainEmoji: String
  public let secondaryEmoji: String
  public let tertiaryEmoji: String

  public init(
    id: ID,
    mainEmoji: String,
    secondaryEmoji: String,
    tertiaryEmoji: String
  ) {
    self.id = id
    self.mainEmoji = mainEmoji
    self.secondaryEmoji = secondaryEmoji
    self.tertiaryEmoji = tertiaryEmoji
  }
}

extension Theme {
  public static let russiaITPower = Theme(
    id: 1,
    mainEmoji: "💻",
    secondaryEmoji: "🇷🇺",
    tertiaryEmoji: "💪🏻"
  )

  public static let popcorn = Theme(
    id: 2,
    mainEmoji: "🍿",
    secondaryEmoji: "🍪",
    tertiaryEmoji: "🎈"
  )

  public static let vacation = Theme(
    id: 3,
    mainEmoji: "🐳",
    secondaryEmoji: "🛟",
    tertiaryEmoji: "🚢"
  )

  public static let happyNewYear = Theme(
    id: 4,
    mainEmoji: "🎅🏻",
    secondaryEmoji: "🎄",
    tertiaryEmoji: "🥳"
  )

  public static let haloween = Theme(
    id: 5,
    mainEmoji: "🎃",
    secondaryEmoji: "👻",
    tertiaryEmoji: "👽"
  )

  public static let zombie = Theme(
    id: 6,
    mainEmoji: "🧠",
    secondaryEmoji: "🧟‍♂️",
    tertiaryEmoji: "🔪"
  )
}
