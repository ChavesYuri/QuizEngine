import SwiftUI

struct SingleAnswerQuestion: View {
    let title: String
    let question: String
    let options: [String]
    let selection: (String) -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            QuizHeaderView(title: title, question: question)
            ForEach(options, id: \.self) { option in
                Button(action: {}) {
                    HStack {
                        Circle()
                            .stroke(Color.secondary, lineWidth: 2)
                        .frame(width: 30, height: 30, alignment: .leading)

                        Text(option)
                            .font(.title)
                            .foregroundColor(.secondary)

                        Spacer()
                    }.padding()
                }
            }
            Spacer()
        }
    }
}

struct SingleAnswerQuestion_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SingleAnswerQuestion(
                title: "1 of 3",
                question: "Who will be the president of Brazil?",
                options: ["Lula", "Bozo", "Amoedo", "Marina Silva"],
                selection: {_ in}
            )

            SingleAnswerQuestion(
                title: "1 of 3",
                question: "Who will be the president of Brazil?",
                options: ["Lula", "Bozo", "Amoedo", "Marina Silva"],
                selection: {_ in}
            ).preferredColorScheme(.dark)
        }

    }
}
