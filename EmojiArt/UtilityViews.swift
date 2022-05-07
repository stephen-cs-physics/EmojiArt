//
//  UtilityViews.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI

struct OptionalImage: View {
    var uiImage: UIImage?
    
    var body: some View {
        if uiImage != nil {
            Image(uiImage: uiImage!)
        }
    }
}
