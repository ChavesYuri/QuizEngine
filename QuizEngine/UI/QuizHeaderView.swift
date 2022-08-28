import SwiftUI
struct QuestionHeader: View {
    let title: String
    let question: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Text(title)
                .font(.headline)
                .fontWeight(.medium)
                .foregroundColor(Color.blue)
                .padding(.top)

            Text(question)
                .font(.largeTitle)
                .fontWeight(.medium)
        }.padding()
    }
}

struct QuestionHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QuestionHeader(
                title: "1 of 3",
                question: "Who will be the president of Brazil?"
            )
            .previewLayout(.sizeThatFits)
        }
    }
}
