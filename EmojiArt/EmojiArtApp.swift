//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDoumentView(document: document)
                .environmentObject(paletteStore)
        }
    }
}
