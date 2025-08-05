import SwiftUI

struct ImagePostView: View, FeedItemPlugin {
    let post: Post

    static func supports(post: Post) -> Bool { post.type == .image }
    static func view(for post: Post) -> AnyView { AnyView(ImagePostView(post: post)) }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(post.user.name).font(.headline)
            Text(post.text)
            if let imageURL = post.imageURL {
                ImageView(urlString: imageURL)
                    .frame(height: 180)
                    .cornerRadius(10)
            }
            Text("\(post.createdAt, formatter: postDateFormatter)").font(.caption).foregroundColor(.gray)
        }
    }
}
