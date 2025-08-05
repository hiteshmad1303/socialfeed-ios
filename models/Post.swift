import Foundation

struct User: Identifiable {
    let id: UUID
    let name: String
    let avatarURL: String
}

struct Post: Identifiable {
    let id: UUID
    let user: User
    let text: String
    let imageURL: String?
    let createdAt: Date
}
