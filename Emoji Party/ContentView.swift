//
//  ContentView.swift
//  Emoji Party
//
//  Created by T Krobot on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojiSets = [
        EmojiSet(name: "Fruits", emojis: ["🍌","🍎", "🍉"], colour: .red),
        EmojiSet(name: "Candy", emojis: ["🍫", "🍬", "🍭"], colour: .blue),
        EmojiSet(name: "Dora", emojis: ["🐔","🐮","🐿","🗺","🦊","🥾","👧","🎒"], colour: .purple)
    ]
    var body: some View {
        NavigationView{
            List(emojiSets) { emojiSet in
                NavigationLink {
                    EmojiView(emojiSet: emojiSet)
                } label: {
                    VStack(alignment:.leading){
                        Text(emojiSet.name)
                            .font(.headline)
                        Text(emojiSet.emojis.joined())
                    }
                }
            }
            .navigationTitle("Emoji Party 🎉")

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
