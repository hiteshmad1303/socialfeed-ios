import SwiftUI

protocol FeedItemPlugin {
    static func supports(post: Post) -> Bool
    static func view(for post: Post) -> AnyView
}
