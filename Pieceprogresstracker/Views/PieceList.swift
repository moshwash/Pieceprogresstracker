//
//  PieceList.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 20.04.2024.
//

import SwiftUI

struct PieceList: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Piece list")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(16)
            
            ScrollView(.vertical) {
                ProgressControl(piece: pieces[0])
                    .navigationTitle("Piece list")
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12.0))
            }
            .padding(16)
            .shadow(color: Color.black.opacity(0.1), radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 2.0)
        }
        .background(Color(hue: 0.646, saturation: 0.061, brightness: 0.95))
    }
}

#Preview {
    PieceList()
}
