//
//  Piece.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 10.03.2024.
//

import Foundation
import SwiftUI
import SwiftData

//@Model
class Piece: Decodable, Identifiable {
    
    var id: Int
    var composer: String
    var name: String
    var bars: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(id: Int, composer: String, name: String, bars: Int, imageName: String) {
        self.id = id
        self.composer = composer
        self.name = name
        self.bars = bars
        self.imageName = imageName
    }
}
