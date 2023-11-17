import Dispatch
import Logging
import Vapor

@main
enum Entrypoint {
  static func main() async throws {
    var env = try Environment.detect()
    try LoggingSystem.bootstrap(from: &env)

    let app = Application(env)
    defer { app.shutdown() }

    do {
      try await configure(app)
    } catch {
      app.logger.report(error: error)
      throw error
    }
    try await app.runFromAsyncMainEntrypoint()
  }
}

/// This extension is temporary and can be removed once Vapor gets this support.
extension Vapor.Application {
  private static let baseExecutionQueue = DispatchQueue(label: "vapor.codes.entrypoint")

  fileprivate func runFromAsyncMainEntrypoint() async throws {
    try await withCheckedThrowingContinuation { continuation in
      Application.baseExecutionQueue.async { [self] in
        do {
          try self.run()
          continuation.resume()
        } catch {
          continuation.resume(throwing: error)
        }
      }
    }
  }
}
