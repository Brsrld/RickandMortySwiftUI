//
//  HeaderDetailView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            Text(detail.selectedCharacter?.name ?? "Rick")
                .font(.largeTitle)
                .fontWeight(.bold)
        })//; VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(CharacterDetail())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
