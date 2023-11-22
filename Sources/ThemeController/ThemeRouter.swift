import CasePaths
import Theme
import VaporRouting

@CasePathable
public enum ThemeRoute {
  case theme(id: Theme.ID)
  case index
}

public struct ThemeRouter: ParserPrinter {
  public var body: some VaporRouting.Router<ThemeRoute> {
    OneOf {
      Route(.case(ThemeRoute.index))

      Route(.case(ThemeRoute.theme)) {
        Path {
          Digits().map(.representing(Theme.ID.self))
        }
      }
    }
  }

  public init() {}
}
