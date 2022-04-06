import Foundation

private class BundleFinder {}

public struct Resources {
  static let Bundle = Foundation.Bundle.init(for: BundleFinder.self)
  static let url = Bundle.resourceURL!

  public static let GraphQLOperations: [URL] = Bundle.urls(
    forResourcesWithExtension: "graphql",
    subdirectory: nil
  )!

  public static let AnimalKingdomSchema = Bundle.url(
    forResource: "AnimalSchema",
    withExtension: "graphqls"
  )!
}