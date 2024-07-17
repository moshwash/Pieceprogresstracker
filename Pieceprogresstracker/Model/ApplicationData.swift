//
//  ApplicationData.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 15.07.2024.
//

import Foundation
import SwiftUI
import SwiftData

class AppData: ObservableObject {
    
    @Published var pieces : [Piece] = load("pieceData.json")
    
//    init(pieces: [Piece]) {
//        self.pieces = pieces
//    }
    
}
