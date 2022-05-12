//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI

@main
struct EmojiArtApp: App {
//    @StateObject var document = EmojiArtDocument()
    @StateObject var paletteStore = PaletteStore(named: "Default")
    
    var body: some Scene {    //iPad can have two different Scene! -> diff Scene share the VM
        DocumentGroup(newDocument: { EmojiArtDocument() }) { config in
            EmojiArtDoumentView(document: config.document)
                .environmentObject(paletteStore)
        }
    }
}
