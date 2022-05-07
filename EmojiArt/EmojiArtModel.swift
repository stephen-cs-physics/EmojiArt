//
//  EmojiArtModel.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import Foundation

struct EmojiArtModel {
    var background = Background.blank
    var emojis = [Emoji]()
    
    struct Emoji : Identifiable {
        let text: String
        var x: Int  //NOT CGFloat, Double ! -> UI Independent
        var y: Int
        var size: Int
        let id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {    //fileprivate: for id access
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    private var uniqueEmojiId = 0
    mutating func addEmoji(_ text: String, at location: (x: Int, y: Int), size: Int) {  //tuple
        uniqueEmojiId += 1
        emojis.append(Emoji(text: text, x: location.x, y: location.y, size: size, id: uniqueEmojiId))
    }
    
    init() { }
    
    enum Background {
        case blank
        case url
        case imageData
    }
}
