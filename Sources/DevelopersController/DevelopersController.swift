import CasePaths
import Developers
import Vapor
import VaporRouting

@CasePathable
public enum DevelopersRoute {
  case developers
}

public let developersRouter = OneOf {
  Route(/DevelopersRoute.developers) {
    Path { "developers" }
  }
}

public func developersHandler(
  request: Request,
  route: DevelopersRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .developers:
    return Developer.all.elements
  }
}

extension Developer: Content {}
