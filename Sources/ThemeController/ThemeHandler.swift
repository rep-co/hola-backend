import Theme
import Vapor

public func themeHandler(
  request: Request,
  route: ThemeRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .index:
    return Theme.cookie
  }
}

extension Theme: Content {}
