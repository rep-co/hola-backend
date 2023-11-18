import Tagged
import VaporRouting

public struct TaggedConversion<Tag, RawValue>: Conversion {
  @inlinable
  public init() {}

  @inlinable
  public func apply(_ input: RawValue) -> Tagged<Tag, RawValue> {
    .init(rawValue: input)
  }

  @inlinable
  public func unapply(_ output: Tagged<Tag, RawValue>) -> RawValue {
    output.rawValue
  }
}
