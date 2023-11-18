import CasePaths
import Packs
import VaporRouting

@CasePathable
public enum PackRoute {
  case previews
  case pack(id: Pack.ID)
}

public struct PackRouter: ParserPrinter {
  public var body: some VaporRouting.Router<PackRoute> {
    OneOf {
      Route(.case(PackRoute.previews))

      Route(.case(PackRoute.pack)) {
        Path {
          Digits().map(.representing(Pack.ID.self))
        }
      }
    }
  }

  public init() {}
}
