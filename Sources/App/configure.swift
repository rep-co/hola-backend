import CasePaths
import DevelopersController
import PackController
import ThemeController
import Vapor
import VaporRouting

@CasePathable
enum AppRoute {
  case pack(PackRoute)
  case developers(DevelopersRoute)
  case theme(ThemeRoute)
}

let appRouter = OneOf {
  Route(.case(AppRoute.pack)) {
    Path { "packs" }
    PackRouter()
  }

  Route(.case(AppRoute.developers)) {
    Path { "developers" }
    DevelopersRouter()
  }
    
    Route(.case(AppRoute.theme)) {
      Path { "theme" }
      ThemeRouter()
    }
}

func appHandler(
  request: Request,
  route: AppRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .pack(let pack):
    return try await packHandler(request: request, route: pack)
  case .developers(let developers):
    return try await developersHandler(request: request, route: developers)
  case .theme(let theme):
      return try await themeHandler(request: request, route: theme)
  }
}

func configure(_ app: Application) async throws {
  app.mount(appRouter, use: appHandler)
}
