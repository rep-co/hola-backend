import Developers
import Vapor

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
