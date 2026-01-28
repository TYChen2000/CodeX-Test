import SwiftUI

struct StudentCardView: View {
    let student: StudentProfile

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(student.name)
                    .font(.subheadline.bold())
                Spacer()
                Text("\(student.age) 岁")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Text("家长：\(student.guardianName)  \(student.guardianPhone)")
                .font(.footnote)
                .foregroundColor(.secondary)

            Text("报名课程：\(student.enrolledCourses.joined(separator: ", "))")
                .font(.footnote)
                .foregroundColor(.secondary)

            if !student.notes.isEmpty {
                Text("备注：\(student.notes)")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
        .padding(12)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
    }
}
