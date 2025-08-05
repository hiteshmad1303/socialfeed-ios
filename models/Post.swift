import Foundation

enum PostType {
    case text
    case image
    case video
}

struct User: Identifiable {
    let id: UUID
    let name: String
    let avatarURL: String
}

struct Post: Identifiable {
    let id: UUID
    let user: User
    let type: PostType
    let text: String
    let imageURL: String?
    let videoURL: String?
    let createdAt: Date
}
