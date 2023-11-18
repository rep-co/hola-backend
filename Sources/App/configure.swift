import CasePaths
import DevelopersController
import PackController
import Vapor
import VaporRouting

@CasePathable
enum AppRoute {
  case pack(PackRoute)
  case developers(DevelopersRoute)
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
  }
}

func configure(_ app: Application) async throws {
  app.mount(appRouter, use: appHandler)
}
