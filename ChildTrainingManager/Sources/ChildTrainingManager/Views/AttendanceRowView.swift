import SwiftUI

struct AttendanceRowView: View {
    let record: AttendanceRecord

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            VStack(alignment: .leading, spacing: 4) {
                Text(record.studentName)
                    .font(.subheadline.bold())
                Text("课程：\(record.courseName)")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                if !record.note.isEmpty {
                    Text(record.note)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 6) {
                Text(record.status.rawValue)
                    .font(.caption.bold())
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(statusColor.opacity(0.15))
                    .foregroundColor(statusColor)
                    .cornerRadius(8)
                Text(record.date, style: .date)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding(12)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
    }

    private var statusColor: Color {
        switch record.status {
        case .present:
            return .green
        case .absent:
            return .red
        case .late:
            return .orange
        }
    }
}
