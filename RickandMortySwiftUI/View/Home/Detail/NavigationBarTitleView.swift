//
//  NavigationBarTitle.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 23.08.2021.
//

import SwiftUI

struct NavigationBarTitleView: View {
    // MARK: - Properties
    
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    detail.selectedCharacter = nil
                    detail.showingCharacter = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.accentColor)
            })//; Button
            NavigationBarView()
        }//; HStack
    }
}

// MARK: - Previews
struct NavigationBarTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarTitleView()
            .environmentObject(CharacterDetail())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
