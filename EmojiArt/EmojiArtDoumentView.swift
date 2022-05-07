//
//  EmojiArtDoumentView.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI

struct EmojiArtDoumentView: View {
    @ObservedObject var document: EmojiArtDocument
    
    let defaultEmojiFontSize: CGFloat = 40
    
    var body: some View {
        VStack(spacing: 0) {
            documentBody
            palette
        }
    }
    
    var documentBody: some View {
        Color.yellow
    }
    
    
    
    var palette: some View {
        ScrollingEmojisView(emojis: testEmojis)
            .font(.system(size: defaultEmojiFontSize))
    }

    
    let testEmojis = "😀😄🦊🍉🍌🍓🍋🍍🥥🎾🎱🏒🪃🚐🚒🦼💿📀💖💘✝️💟☯️☦️🏴🏳️‍🌈🏳️‍⚧️🇺🇳🚩🇬🇭🇬🇦🇬🇲🇳🇷"
}

struct ScrollingEmojisView: View {
    let emojis: String
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(emojis.map{ String($0) }, id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtDoumentView(document: EmojiArtDocument())
    }
}
