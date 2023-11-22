import Theme
import Vapor

public func themeHandler(
  request: Request,
  route: ThemeRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .index:
    return Theme.popcorn

  case .theme(let id):
    guard let theme = Theme.all[id: id]
    else { throw Abort(.notFound) }
    return theme
  }
}

extension Theme: Content {}
