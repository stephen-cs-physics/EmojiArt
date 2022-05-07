//
//  UtilityExtensions.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import SwiftUI


extension Collection where Element: Identifiable {
    func index(matching element: Element) -> Self.Index? {
        firstIndex(where: { $0.id == element.id })
    }
}
