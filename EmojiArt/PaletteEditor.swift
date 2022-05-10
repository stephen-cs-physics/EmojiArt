//
//  PaletteEditor.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/10.
//

import SwiftUI

struct PaletteEditor: View {
    @State private var palette: Palette = PaletteStore(named: "Test").palette(at: 2)
    
    var body: some View {
        Form {
            TextField("Name", text: $palette.name)  //bind!!
        }
        
    }
}

struct PaletteEditor_Previews: PreviewProvider {
    static var previews: some View {
        PaletteEditor()
            .previewLayout(.fixed(width: 300, height: 350))
    }
}
