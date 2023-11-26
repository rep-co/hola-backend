import IdentifiedCollections

extension Pack {
  public static let all: IdentifiedArrayOf<Self> = [
    .acquaintanceship,
    .couple,
    .friends,
    .selfKnowledge,
    .coupleSecond,
    .pathToDating,
    .friendsSecond,
  ]
}

extension PackPreview {
  public static let all: IdentifiedArrayOf<Self> = .init(uniqueElements: Pack.all.map(\.preview))
}
