import SwiftUI

struct SingleTextSelectionCell: View {
    let text: String
    let selection: () -> Void

    var body: some View {
        Button(action: selection) {
            HStack {
                Circle()
                    .stroke(Color.secondary, lineWidth: 2)
                    .frame(width: 30, height: 30, alignment: .leading)

                Text(text)
                    .font(.title)
                    .foregroundColor(.secondary)

                Spacer()
            }.padding()
        }
    }
}

struct SingleTextSelectionCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SingleTextSelectionCell(text: "Amoedo", selection: {})
            .previewLayout(.sizeThatFits)
        }
    }
}
