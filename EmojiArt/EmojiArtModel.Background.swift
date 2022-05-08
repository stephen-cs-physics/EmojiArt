//
//  EmojiArtModel.Background.swift
//  EmojiArt
//
//  Created by stephen on 2022/05/07.
//

import Foundation

extension EmojiArtModel {
    enum Background : Equatable{
        case blank
        case url(URL)   //associated data
        case imageData(Data)
        
        var url: URL? {
            switch self {
            case .url(let url): return url
            default: return nil
            }
        }
        
        var imageData: Data? {
            switch self {
            case .imageData(let data): return data
            default: return nil
            }
        }
    }
}
