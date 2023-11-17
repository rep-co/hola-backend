import IdentifiedCollections
import Tagged

public struct Pack: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let title: String
  public let description: String
  public let cards: IdentifiedArrayOf<Card>

  public init(
    id: ID,
    title: String,
    description: String,
    cards: IdentifiedArrayOf<Card>
  ) {
    self.id = id
    self.title = title
    self.description = description
    self.cards = cards
  }
}
