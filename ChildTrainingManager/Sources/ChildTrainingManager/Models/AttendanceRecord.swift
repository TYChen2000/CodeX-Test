import Foundation

enum AttendanceStatus: String, CaseIterable {
    case present = "已签到"
    case absent = "缺勤"
    case late = "迟到"
}

struct AttendanceRecord: Identifiable, Hashable {
    let id: UUID
    var courseName: String
    var studentName: String
    var date: Date
    var status: AttendanceStatus
    var note: String
}
