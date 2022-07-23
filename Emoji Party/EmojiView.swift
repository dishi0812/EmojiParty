import SwiftUI

struct EmojiView: View {
    var emojiSet: EmojiSet
    @State var selectedEmojis: [String] = []
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(emojiSet.emojis, id: \.self) { emoji in
                    Button {
                        selectedEmojis.append(emoji)
                    } label: {
                        Text(emoji)
                    }
                }
            }
            BouncyView(emojis: selectedEmojis) { surface in
                switch surface {
                case .emoji:
                    print("L(oser)")
                case .wall:
                    print("W(all)")
                }
            }
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiSet: EmojiSet(name: "Fruits",
        emojis: ["🍌", "🍎", "🍓", "🍉", "🍍", "🥑"]))
    }
}
