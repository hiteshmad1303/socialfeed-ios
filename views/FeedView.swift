import SwiftUI

struct FeedView: View {
    @StateObject private var viewModel = FeedViewModel()
    
    let plugins: [FeedItemPlugin.Type] = [
        TextPostView.self,
        ImagePostView.self,
        VideoPostView.self
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.posts) { post in
                    pluginView(for: post)
                        .onAppear {
                            if post == viewModel.posts.last {
                                viewModel.loadMore()
                            }
                        }
                        .padding(.vertical, 8)
                }
            }
            .navigationTitle("Social Feed")
            .refreshable {
                viewModel.refresh()
            }
            .overlay(
                viewModel.isLoading ?
                ProgressView("Loading...") : nil
            )
        }
    }
    
    @ViewBuilder
    func pluginView(for post: Post) -> some View {
        for plugin in plugins {
            if plugin.supports(post: post) {
                plugin.view(for: post)
                return
            }
        }
        // Fallback
        Text(post.text)
    }
}
