import Foundation

struct StudentProfile: Identifiable, Hashable {
    let id: UUID
    var name: String
    var age: Int
    var guardianName: String
    var guardianPhone: String
    var enrolledCourses: [String]
    var notes: String
}
