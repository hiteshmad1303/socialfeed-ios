import Foundation

struct SampleData {
    static let users: [User] = [
        User(id: UUID(), name: "Alice", avatarURL: "https://randomuser.me/api/portraits/women/1.jpg"),
        User(id: UUID(), name: "Bob", avatarURL: "https://randomuser.me/api/portraits/men/2.jpg"),
        User(id: UUID(), name: "Carol", avatarURL: "https://randomuser.me/api/portraits/women/3.jpg"),
        User(id: UUID(), name: "Dave", avatarURL: "https://randomuser.me/api/portraits/men/4.jpg"),
        User(id: UUID(), name: "Eve", avatarURL: "https://randomuser.me/api/portraits/women/5.jpg"),
        User(id: UUID(), name: "Frank", avatarURL: "https://randomuser.me/api/portraits/men/6.jpg")
    ]

    static let posts: [Post] = [
        // Text Posts
        Post(id: UUID(), user: users[0], type: .text, text: "Hello, this is my first post!", imageURL: nil, videoURL: nil, createdAt: Date()),
        Post(id: UUID(), user: users[1], type: .text, text: "Did anyone try the new coffee shop in town?", imageURL: nil, videoURL: nil, createdAt: Date().addingTimeInterval(-3000)),
        Post(id: UUID(), user: users[2], type: .text, text: "Starting my marathon training today!", imageURL: nil, videoURL: nil, createdAt: Date().addingTimeInterval(-6000)),
        // Image Posts
        Post(id: UUID(), user: users[3], type: .image, text: "Look at this sunset 🌅", imageURL: "https://images.unsplash.com/photo-1506744038136-46273834b3fb", videoURL: nil, createdAt: Date().addingTimeInterval(-9000)),
        Post(id: UUID(), user: users[4], type: .image, text: "Family picnic memories!", imageURL: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca", videoURL: nil, createdAt: Date().addingTimeInterval(-12000)),
        Post(id: UUID(), user: users[5], type: .image, text: "Mountain hiking adventure.", imageURL: "https://images.unsplash.com/photo-1519125323398-675f0ddb6308", videoURL: nil, createdAt: Date().addingTimeInterval(-15000)),
        // Video Posts
        Post(id: UUID(), user: users[0], type: .video, text: "Check out my skateboarding skills!", imageURL: "https://img.youtube.com/vi/ScMzIvxBSi4/0.jpg", videoURL: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4", createdAt: Date().addingTimeInterval(-18000)),
        Post(id: UUID(), user: users[1], type: .video, text: "My latest vlog is out now!", imageURL: "https://img.youtube.com/vi/dQw4w9WgXcQ/0.jpg", videoURL: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4", createdAt: Date().addingTimeInterval(-21000)),
        Post(id: UUID(), user: users[2], type: .video, text: "Behind the scenes at the studio 🎥", imageURL: "https://img.youtube.com/vi/5qap5aO4i9A/0.jpg", videoURL: "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4", createdAt: Date().addingTimeInterval(-24000)),
        // More Text Posts
        Post(id: UUID(), user: users[3], type: .text, text: "Reading a new sci-fi novel this weekend.", imageURL: nil, videoURL: nil, createdAt: Date().addingTimeInterval(-27000)),
        Post(id: UUID(), user: users[4], type: .text, text: "Who wants to join a cooking class?", imageURL: nil, videoURL: nil, createdAt: Date().addingTimeInterval(-30000)),
        // More Image Post
        Post(id: UUID(), user: users[5], type: .image, text: "Captured this wild fox today!", imageURL: "https://images.unsplash.com/photo-1468373717403-5835afc7b2a7", videoURL: nil, createdAt: Date().addingTimeInterval(-33000))
    ]
}
