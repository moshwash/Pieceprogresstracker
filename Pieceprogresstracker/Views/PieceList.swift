//
//  PieceList.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 20.04.2024.
//

import SwiftUI

struct PieceList: View {
    
    @State var showNewPiece: Bool = false
    @EnvironmentObject var data: AppData
    
    var body: some View {
        NavigationSplitView {
            ScrollView(.vertical) {
                ForEach(data.pieces) { piece in
                    ProgressControl(piece: piece)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12.0))
                        .padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
                }
            }
            .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0.0, y: 2.0)
            .background(Color(hue: 0.646, saturation: 0.061, brightness: 0.95))
            .navigationTitle("Piece list")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("New piece") {
                        showNewPiece.toggle()
                    }
                }
            }
            .sheet(isPresented: $showNewPiece, content: {
                NewPiece()
            })
        } detail: {
            Text("View your progress")
        }
    }
}

#Preview {
    PieceList()
}
