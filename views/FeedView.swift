import SwiftUI

struct FeedView: View {
    @StateObject private var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.posts) { post in
                    PostRowView(post: post)
                        .onAppear {
                            // Infinite scroll: load more when last post appears
                            if post == viewModel.posts.last {
                                viewModel.loadMore()
                            }
                        }
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
}
