import IdentifiedCollections

extension Pack {
  public static let all: IdentifiedArrayOf<Self> = [
    .acquaintanceship,
    .couple,
    .frends,
  ]
}

extension PackPreview {
  public static let all: IdentifiedArrayOf<Self> = .init(uniqueElements: Pack.all.map(\.preview))
}
