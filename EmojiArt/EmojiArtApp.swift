//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    let document = EmojiArtDocument()
    var body: some Scene {
        WindowGroup {
            EmojiArtDoumentView(document: document)
        }
    }
}
