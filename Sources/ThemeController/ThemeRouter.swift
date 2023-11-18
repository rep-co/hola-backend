import CasePaths
import Packs
import VaporRouting

@CasePathable
public enum ThemeRoute {
  case index
}

public struct ThemeRouter: ParserPrinter {
  public var body: some VaporRouting.Router<ThemeRoute> {
    OneOf {
      Route(.case(ThemeRoute.index))
    }
  }

  public init() {}
}
