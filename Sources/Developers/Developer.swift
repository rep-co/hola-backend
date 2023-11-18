import Foundation
import IdentifiedCollections
import Tagged

public struct Developer: Codable, Identifiable, Sendable {
  public let id: Tagged<Self, Int>
  public let name: String
  public let description: String
  public let image: URL
  public let link: URL

  public init(
    id: ID,
    name: String,
    description: String,
    image: URL,
    link: URL
  ) {
    self.id = id
    self.name = name
    self.description = description
    self.image = image
    self.link = link
  }
}

extension Developer {
  public static let all: IdentifiedArrayOf<Developer> = [
    Developer(
      id: 1,
      name: "Sitora", 
      description: "Product Manager",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/sitic96")!
    ),
    Developer(
      id: 2,
      name: "Gleb", 
      description: "IOS Developer",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/LolleyBall")!
    ),
    Developer(
      id: 3,
      name: "Vadim",
      description: "IOS Developer",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/Mov4D")!
    ),
    Developer(
      id: 4,
      name: "Roman", 
      description: "Backend Developer",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/rofle100lvl")!
    ),
    Developer(
      id: 5,
      name: "Arina", 
      description: "Designer",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/rofle100lvl")!  // TODO: Replace link
    ),
    Developer(
      id: 6,
      name: "Timur", 
      description: "Backend Developer",
      image: URL(string: "https://tinyurl.com/4yrpzh6e")!,
      link: URL(string: "https://github.com/tplaymeow")!
    ),
  ]
}
