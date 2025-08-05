import Foundation

struct SampleData {
    static let users: [User] = [
        User(id: UUID(), name: "Alice", avatarURL: "https://randomuser.me/api/portraits/women/1.jpg"),
        User(id: UUID(), name: "Bob", avatarURL: "https://randomuser.me/api/portraits/men/2.jpg"),
        User(id: UUID(), name: "Carol", avatarURL: "https://randomuser.me/api/portraits/women/3.jpg"),
        User(id: UUID(), name: "Dave", avatarURL: "https://randomuser.me/api/portraits/men/4.jpg"),
        User(id: UUID(), name: "Eve", avatarURL: "https://randomuser.me/api/portraits/women/5.jpg")
    ]

    static let posts: [Post] = [
        Post(id: UUID(), user: users[0], text: "Hello, this is my first post!", imageURL: nil, createdAt: Date()),
        Post(id: UUID(), user: users[1], text: "Check out this cool photo!", imageURL: "https://images.unsplash.com/photo-1519125323398-675f0ddb6308", createdAt: Date().addingTimeInterval(-3600)),
        Post(id: UUID(), user: users[2], text: "Anyone up for a hike this weekend?", imageURL: nil, createdAt: Date().addingTimeInterval(-7200)),
        Post(id: UUID(), user: users[3], text: "Just finished a great book!", imageURL: nil, createdAt: Date().addingTimeInterval(-10800)),
        Post(id: UUID(), user: users[4], text: "Captured this sunset yesterday.", imageURL: "https://images.unsplash.com/photo-1506744038136-46273834b3fb", createdAt: Date().addingTimeInterval(-14400)),
        Post(id: UUID(), user: users[0], text: "Beautiful day today! 🌞", imageURL: nil, createdAt: Date().addingTimeInterval(-18000)),
        Post(id: UUID(), user: users[1], text: "Who's ready for the weekend?", imageURL: nil, createdAt: Date().addingTimeInterval(-21600)),
        Post(id: UUID(), user: users[2], text: "Check out my new painting!", imageURL: "https://images.unsplash.com/photo-1465101046530-73398c7f28ca", createdAt: Date().addingTimeInterval(-25200)),
        Post(id: UUID(), user: users[3], text: "Learning to play the guitar.", imageURL: nil, createdAt: Date().addingTimeInterval(-28800)),
        Post(id: UUID(), user: users[4], text: "Best coffee spot in town!", imageURL: nil, createdAt: Date().addingTimeInterval(-32400))
    ]
}
