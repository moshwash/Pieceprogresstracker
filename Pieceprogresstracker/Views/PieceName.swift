//
//  PieceName.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 12.03.2024.
//

import SwiftUI

struct PieceName: View {
    var piece: Piece
    
    var body: some View {
        Text(piece.name)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.title3)
            .fontWeight(.semibold)
    }
}

#Preview {
    PieceName(piece: pieces[0])
}
