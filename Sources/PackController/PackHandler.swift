import Packs
import Vapor

public func packHandler(
  request: Request,
  route: PackRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .previews:
    return PackPreview.all.elements

  case .pack(let id):
    guard let pack = Pack.all[id: id]
    else { throw Abort(.notFound) }
    return pack
  }
}

extension Pack: Content {}
extension PackPreview: Content {}
