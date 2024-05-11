//
//  NewPiece.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 11.05.2024.
//

import SwiftUI

struct NewPiece: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            NavigationView {
                Form {
                    
                    Section {
                        
                    } header: {
                        Text("Test section")
                    } footer: {
                        Text("Test text information")
                    }
                    .headerProminence(.increased)
                    
                }
                .navigationTitle("New Piece")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Save") {
                            
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Cancel")
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    NewPiece()
}
