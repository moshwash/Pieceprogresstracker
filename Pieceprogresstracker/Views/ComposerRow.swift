//
//  ComposerRow.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 12.03.2024.
//

import SwiftUI

struct ComposerRow: View {
    var piece: Piece
    
    var body: some View {
        HStack {
            piece.image //make it circle +
                .resizable()
                .frame(width: 32, height: 32)
                .clipShape(Circle())
            Text(piece.composer) //make correct font +
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(Color(.systemGray))
        }
    }
}

#Preview {
    ComposerRow(piece: pieces[0])
}
