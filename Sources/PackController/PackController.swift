import CasePaths
import Packs
import Tagged
import Utils
import Vapor
import VaporRouting

@CasePathable
public enum PackRoute {
  case previews
  case pack(id: Pack.ID)
}

public let packRouter = OneOf {
  Route(/PackRoute.previews) {
    Path { "packs" }
  }

  Route(TaggedConversion().map(/PackRoute.pack)) {
    Path {
      "packs"
      Digits()
    }
  }
}

public func packHandler(
  request: Request,
  route: PackRoute
) async throws -> any AsyncResponseEncodable {
  switch route {
  case .previews:
    return PackPreview.all.elements

  case let .pack(id):
    guard let pack = Pack.all[id: id]
    else { throw Abort(.notFound) }
    return pack
  }
}

extension Pack: Content {}
extension PackPreview: Content {}
