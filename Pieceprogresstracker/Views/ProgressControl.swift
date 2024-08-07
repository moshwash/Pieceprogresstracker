//
//  ProgressControl.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 13.03.2024.
//

import SwiftUI

//Прокинуть AppData

struct ProgressControl: View {
    
    var piece: Piece
    @EnvironmentObject var data: AppData
    
    @State private var learnedBars: Int = 0
    
    func calc(learned: Int , bars: Int) -> Int {
        if learnedBars > 0 {
            let calculation = learnedBars * 100 / piece.bars
            return calculation
        } else {
            return 0
        }
        
    }
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                ComposerRow(piece: piece)
                    .padding(.bottom, 8)
                PieceName(piece: piece)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 8)
            }
            
            HStack {
                Text("Bars learned: \(learnedBars) / \(piece.bars)")
                Spacer()
                Text("\(calc(learned: learnedBars, bars: piece.bars))%")
                    .foregroundColor(Color.blue)
                
            }
            .font(.footnote)
            
            ProgressBar(progress: learnedBars, piece: piece)
                .frame(height: 6)
                .clipShape(RoundedRectangle(cornerRadius: 100.0))
                .padding(.bottom, 8)
            
            HStack {
                Button(action: {
                    if learnedBars > 0 && learnedBars <= piece.bars {
                        learnedBars -= 1
                    } else {
                        return
                    }
                    
                }, label: {
                    Text("- Bar")
                        .accentColor(.black)
                        .frame(maxWidth: .infinity)
                })
                .disabled(learnedBars == 0)
                .padding(6)
                .overlay(
                    RoundedRectangle(cornerRadius: 100.0)
                        .stroke(.black, lineWidth: 1)
                )
                
                Button(action: {
                    if learnedBars >= 0 && learnedBars < piece.bars {
                        learnedBars += 1
                    } else {
                        return
                    }
                }, label: {
                    Text("+ Bar")
                        .frame(maxWidth: .infinity)
                })
                .disabled(learnedBars == piece.bars)
                .clipShape(RoundedRectangle(cornerRadius: 100.0))
                .buttonStyle(.borderedProminent)
            }
        }
        .padding(12)
    }
}

#Preview {
    ProgressControl(piece: pieces[0])
}
