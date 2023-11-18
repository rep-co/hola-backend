import Foundation
import IdentifiedCollections
import Tagged

public struct Developer: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let name: String
  public let image: URL
  public let link: URL

  public init(
    id: ID,
    name: String,
    image: URL,
    link: URL
  ) {
    self.id = id
    self.name = name
    self.image = image
    self.link = link
  }
}

extension Developer {
  public static let all: IdentifiedArrayOf<Developer> = [
    Developer(
      id: 1,
      name: "Sitora",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/sitic96")!
    ),
    Developer(
      id: 2,
      name: "Gleb",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/LolleyBall")!
    ),
    Developer(
      id: 3,
      name: "Vadim",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/Mov4D")!
    ),
    Developer(
      id: 4,
      name: "Roman",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/rofle100lvl")!
    ),
    Developer(
      id: 5,
      name: "Arina",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/rofle100lvl")!  // TODO: Replace link
    ),
    Developer(
      id: 6,
      name: "Timur",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/tplaymeow")!
    ),
  ]
}
