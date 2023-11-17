import Packs
import Vapor

public struct PackController: RouteCollection {
  public init() {}

  public func boot(routes: RoutesBuilder) throws {
    let packs = routes.grouped("packs")
    packs.get(use: self.previews)
    packs.group(":id") { pack in
      pack.get(use: self.pack)
    }
  }

  @Sendable
  private func previews(req: Request) async -> [PackPreview] {
    PackPreview.all.elements
  }

  @Sendable
  private func pack(req: Request) async throws -> Pack {
    guard let id = req.parameters.get("id", as: Pack.ID.self) else {
      throw Abort(.badRequest)
    }
    guard let pack = Pack.all[id: id] else {
      throw Abort(.notFound)
    }
    return pack
  }
}

extension Pack: Content {}
extension PackPreview: Content {}
