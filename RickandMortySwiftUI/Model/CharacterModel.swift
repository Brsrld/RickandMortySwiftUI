//
//  CharacterModel.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import Foundation

// MARK: - Character Models

struct Character: Codable, Identifiable {
    let id = UUID()
    let name: String
    let status: String
    let gender: String
    let origin: Origin
    let image: String
    let species: String
    let location: Location
}

