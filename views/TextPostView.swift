import SwiftUI

struct TextPostView: View, FeedItemPlugin {
    let post: Post

    static func supports(post: Post) -> Bool { post.type == .text }
    static func view(for post: Post) -> AnyView { AnyView(TextPostView(post: post)) }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(post.user.name).font(.headline)
            Text(post.text)
            Text("\(post.createdAt, formatter: postDateFormatter)").font(.caption).foregroundColor(.gray)
        }
    }
}
