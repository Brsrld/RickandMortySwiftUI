//
//  CharacterDetail.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import Foundation

class CharacterDetail: ObservableObject {
    @Published var showingCharacter: Bool = false
    @Published var selectedCharacter: Character? = nil
}
