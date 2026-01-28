import Foundation

struct TrainingCourse: Identifiable, Hashable {
    let id: UUID
    var name: String
    var coachName: String
    var schedule: String
    var capacity: Int
    var enrolledCount: Int
    var location: String

    var remainingSeats: Int {
        max(capacity - enrolledCount, 0)
    }
}
