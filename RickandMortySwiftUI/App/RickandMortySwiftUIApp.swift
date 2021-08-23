//
//  RickandMortySwiftUIApp.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

@main
struct RickandMortySwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CharacterDetail())
        }
    }
}
