import CasePaths
import VaporRouting

@CasePathable
public enum DevelopersRoute {
  case developers
}

public struct DevelopersRouter: ParserPrinter {
  public var body: some VaporRouting.Router<DevelopersRoute> {
    OneOf {
      Route(.case(DevelopersRoute.developers))
    }
  }

  public init() {}
}
