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
  Route(/AppRoute.pack) {
    packRouter
  }

  Route(/AppRoute.developers) {
    developersRouter
  }
}

func appHandler(
  request: Request,
  route: AppRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case let .pack(pack):
    return try await packHandler(request: request, route: pack)
  case let .developers(developers):
    return try await developersHandler(request: request, route: developers)
  }
}

func configure(_ app: Application) async throws {
  app.mount(appRouter, use: appHandler)
}
