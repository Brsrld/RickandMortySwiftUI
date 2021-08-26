//
//  ImageDetailView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 23.08.2021.
//

import SwiftUI
import Kingfisher

struct ImageDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {

            KFImage(URL(string:detail.selectedCharacter?.image ?? ""))
                .resizable()
                .scaledToFit()
                .frame(width: 375, height: 375, alignment: .center)
                .foregroundColor(.accentColor)
        })//; VStack
        .cornerRadius(15)
    }
}

// MARK: - Previews
struct ImageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetailView()
            .environmentObject(CharacterDetail())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
