import SwiftUI

struct VideoPostView: View, FeedItemPlugin {
    let post: Post

    static func supports(post: Post) -> Bool { post.type == .video }
    static func view(for post: Post) -> AnyView { AnyView(VideoPostView(post: post)) }

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(post.user.name).font(.headline)
            Text(post.text)
            if let imageURL = post.imageURL {
                ImageView(urlString: imageURL)
                    .frame(height: 180)
                    .cornerRadius(10)
                    .overlay(
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .shadow(radius: 4),
                        alignment: .center
                    )
            }
            Text("Video Preview")
                .font(.caption)
                .foregroundColor(.blue)
            Text("\(post.createdAt, formatter: postDateFormatter)").font(.caption).foregroundColor(.gray)
        }
    }
}
