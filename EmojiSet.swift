//
//  EmojiSet.swift
//  Emoji Party
//
//  Created by T Krobot on 23/7/22.
//

import Foundation

// emoji set 
struct EmojiSet: Identifiable{
    var id = UUID()
    var name: String
    var emojis: [String]
}
    
