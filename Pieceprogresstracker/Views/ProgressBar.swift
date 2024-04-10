//
//  ProgressBar.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 13.03.2024.
//

import SwiftUI

struct ProgressBar: View {
    var piece: Piece
    
    var body: some View {
        VStack {
            HStack {
                Text("Bars learned: 15 / \(piece.bars)")
                Spacer()
                Text("76%")
                    .foregroundColor(Color.blue)
                
            }
            .font(.caption)
            
            // затестить код из чатЖПТ, попробовать связать с кнопками
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("- Bar")
                        .foregroundStyle(Color(.black))
                        .frame(maxWidth: .infinity)
                })
                .padding(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 100.0)
                        .stroke(.black, lineWidth: 1)
                )
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("+ Bar")
                        .frame(maxWidth: .infinity)
                })
                .clipShape(RoundedRectangle(cornerRadius: 100.0))
                .buttonStyle(.borderedProminent)
                
            }
        }
    }
}

#Preview {
    ProgressBar(piece: pieces[0])
}
