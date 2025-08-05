import Foundation
import Combine

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = []
    @Published var isLoading: Bool = false

    init() {
        loadPosts()
    }

    func loadPosts() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.posts = SampleData.posts
            self.isLoading = false
        }
    }

    func refresh() {
        loadPosts()
    }

    func loadMore() {
        let morePosts = SampleData.posts.map { post in
            Post(id: UUID(), user: post.user, text: post.text, imageURL: post.imageURL, createdAt: Date())
        }
        self.posts.append(contentsOf: morePosts)
    }
}
