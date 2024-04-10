//
//  Piece.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 10.03.2024.
//

import Foundation
import SwiftUI

struct Piece: Hashable, Codable, Identifiable {
    
    var id: Int
    var composer: String
    var name: String
    var bars: Int
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
