//
//  CharacterItemView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI
import Kingfisher

struct CharacterItemView: View {
    
    // MARK: - Properties
    
    let name: String
    let species: String
    let image: String

    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            KFImage(URL(string: image))
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(12)
                .frame(width: 150, height: 150, alignment: .center)
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text(name)
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.accentColor)
                
                Text(species)
                    .fontWeight(.light)
                    .foregroundColor(.white)
            })//; VStack
            Spacer()
        }//; HStack
    }
}

// MARK: - Previews
struct CharacterItemView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterItemView(name: "Rick", species: "Rick's Toxic Side", image: "sample")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}
