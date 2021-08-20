//
//  CharacterModel.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import Foundation

struct Character: Codable, Identifiable {
    let id = UUID()
    let name: String
    let status: String
    let type: String?
    let gender: String
    let origin: Origin
    let image: String
    let species: String
}

struct Origin: Codable {
    let name: String
}

struct Result: Codable {
    let results: [Character]
}
