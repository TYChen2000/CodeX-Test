import SwiftUI

struct CourseCardView: View {
    let course: TrainingCourse

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text(course.name)
                    .font(.subheadline.bold())
                Spacer()
                Text("余位 \(course.remainingSeats)")
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(Color.green.opacity(0.15))
                    .foregroundColor(.green)
                    .cornerRadius(8)
            }

            Text("教练：\(course.coachName)")
                .font(.footnote)
                .foregroundColor(.secondary)

            Text("时间：\(course.schedule)")
                .font(.footnote)
                .foregroundColor(.secondary)

            Text("地点：\(course.location)")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .padding(12)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
    }
}
