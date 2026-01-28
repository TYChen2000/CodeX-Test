import Foundation

final class DashboardViewModel: ObservableObject {
    @Published var courses: [TrainingCourse]
    @Published var students: [StudentProfile]
    @Published var attendance: [AttendanceRecord]
    @Published var notifications: [String]

    init() {
        courses = [
            TrainingCourse(
                id: UUID(),
                name: "少儿篮球启蒙",
                coachName: "李教练",
                schedule: "周二/周四 16:00-17:30",
                capacity: 16,
                enrolledCount: 12,
                location: "A馆 2F"
            ),
            TrainingCourse(
                id: UUID(),
                name: "儿童舞蹈基础",
                coachName: "王老师",
                schedule: "周六 10:00-11:30",
                capacity: 20,
                enrolledCount: 18,
                location: "B馆 1F"
            )
        ]

        students = [
            StudentProfile(
                id: UUID(),
                name: "陈乐乐",
                age: 7,
                guardianName: "陈女士",
                guardianPhone: "138-0000-0000",
                enrolledCourses: ["少儿篮球启蒙"],
                notes: "对球类运动兴趣高"
            ),
            StudentProfile(
                id: UUID(),
                name: "杨星星",
                age: 6,
                guardianName: "杨先生",
                guardianPhone: "139-0000-0000",
                enrolledCourses: ["儿童舞蹈基础"],
                notes: "请提前提醒签到"
            )
        ]

        attendance = [
            AttendanceRecord(
                id: UUID(),
                courseName: "少儿篮球启蒙",
                studentName: "陈乐乐",
                date: Date(),
                status: .present,
                note: ""
            ),
            AttendanceRecord(
                id: UUID(),
                courseName: "儿童舞蹈基础",
                studentName: "杨星星",
                date: Date(),
                status: .late,
                note: "迟到 10 分钟"
            )
        ]

        notifications = [
            "周二 15:30 发送课程提醒",
            "学员缺勤自动推送家长通知",
            "每周五生成教练课表"
        ]
    }
}
