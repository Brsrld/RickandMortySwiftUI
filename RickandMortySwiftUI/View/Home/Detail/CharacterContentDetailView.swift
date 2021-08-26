//
//  CharacterContentDetailView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 23.08.2021.
//

import SwiftUI

struct CharacterContentDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            HStack(spacing: 5) {
                
                Text("Name :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.name ?? "No name")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
            }//; HStack
            HStack {
                Text("Gender :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.gender ?? "No species")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
            }//; HStack
            HStack {
                Text("Status :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.status ?? "No status")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
            }//; HStack
            HStack {
                Text("Species :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.species ?? "No species")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
            }//; HStack
            HStack {
                Text("Origin :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.origin.name ?? "No origin")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                
            }//; HStack
            HStack {
                Text("Location :")
                    .font(.title3)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                
                Text(detail.selectedCharacter?.location.name ?? "No location")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                Spacer()
            }//; HStack
        })//; VStack
    }
}

// MARK: - Previews
struct CharacterContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterContentDetailView()
            .previewLayout(.sizeThatFits)
            .environmentObject(CharacterDetail())
    }
}
