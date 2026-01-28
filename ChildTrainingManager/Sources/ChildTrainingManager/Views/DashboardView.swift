import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: DashboardViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    headerSection
                    CourseSection(courses: viewModel.courses)
                    StudentSection(students: viewModel.students)
                    AttendanceSection(records: viewModel.attendance)
                    NotificationSection(notifications: viewModel.notifications)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 24)
            }
            .navigationTitle("培训管理")
            .background(Color(UIColor.systemGroupedBackground))
        }
    }

    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("今日概览")
                .font(.title2.bold())
            Text("随时掌握课程与学员动态")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top, 8)
    }
}

private struct CourseSection: View {
    let courses: [TrainingCourse]

    var body: some View {
        SectionCard(title: "课程排课") {
            ForEach(courses) { course in
                CourseCardView(course: course)
            }
        }
    }
}

private struct StudentSection: View {
    let students: [StudentProfile]

    var body: some View {
        SectionCard(title: "学员管理") {
            ForEach(students) { student in
                StudentCardView(student: student)
            }
        }
    }
}

private struct AttendanceSection: View {
    let records: [AttendanceRecord]

    var body: some View {
        SectionCard(title: "签到记录") {
            ForEach(records) { record in
                AttendanceRowView(record: record)
            }
        }
    }
}

private struct NotificationSection: View {
    let notifications: [String]

    var body: some View {
        SectionCard(title: "提醒设置") {
            ForEach(notifications, id: \.self) { notification in
                HStack(alignment: .top, spacing: 12) {
                    Image(systemName: "bell.badge")
                        .foregroundColor(.orange)
                    Text(notification)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.vertical, 4)
            }
        }
    }
}

private struct SectionCard<Content: View>: View {
    let title: String
    let content: Content

    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.headline)
            content
        }
        .padding(16)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .shadow(color: Color.black.opacity(0.05), radius: 8, x: 0, y: 4)
    }
}
