//
//  Service.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import Foundation

class Service : ObservableObject{
    @Published var characters = [Character]()
    
    func loadData(completion:@escaping ([Character]) -> ()) {
        guard let url = URL(string: serviceUrl) else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let characters = try! JSONDecoder().decode(Result.self, from: data!)
            print(characters)
            DispatchQueue.main.async {
                completion(characters.results)
            }
        }.resume()
    }
}

