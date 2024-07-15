//
//  PieceprogresstrackerApp.swift
//  Pieceprogresstracker
//
//  Created by Oleg D on 10.03.2024.
//

import SwiftUI


@main
struct PieceprogresstrackerApp: App {
    
    @StateObject var data = AppData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(data)
    }
}
