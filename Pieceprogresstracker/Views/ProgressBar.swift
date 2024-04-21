//
//  ProgressBar.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 20.04.2024.
//

import SwiftUI

struct ProgressBar: View {
    var progress: Int
    var piece: Piece

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 6)
                    .opacity(0.3)
                    .foregroundColor(Color.gray)
                
                Rectangle()
                    .frame(width: min(CGFloat(self.progress)*geometry.size.width / CGFloat(piece.bars), geometry.size.width), height: 6)
                    .foregroundColor(Color.blue)
                    .animation(.linear, value: progress)
            }
        }
    }
}

#Preview {
    ProgressBar(progress: 0, piece: pieces[0])
}
