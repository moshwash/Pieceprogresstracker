//
//  NewPiece.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 11.05.2024.
//

import SwiftUI

struct NewPiece: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var barNumber: Int? //Allows digits as only input
    
    var body: some View {
        ZStack {
            NavigationView {
                Form {
                    
                    Section {
                        
                        TextField("Piece name", text: .constant(""))
                            .textContentType(.none)
                            .keyboardType(.namePhonePad)
                        
                    } header: {
                        
                    } footer: {
                        Text("Fill in the piece name")
                    }
                    .headerProminence(.increased)
                    
                    
                    Section {
                        
                        TextField("Select composer", text: .constant(""))
                        
                    } header: {
                        
                    } footer: {
                        Text("Select composer or add a new one")
                    }
                    .headerProminence(.increased)
                    
                    
                    Section {
                        
                        TextField("Number of bars", value: $barNumber, format: .number)
                            .textContentType(.telephoneNumber)
                            .keyboardType(.phonePad)

                        
                    } header: {
                        
                    } footer: {
                        Text("Enter amount of bars in the piece")
                    }
                    .headerProminence(.increased)
                    
                    
                    Section {
                        
                        Button(role: .destructive) {
                            
                        } label: {
                            Text("Clear All")
                        }

                    }
                    
                }
                .navigationTitle("New piece")
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

// private extension NewPiece {}
