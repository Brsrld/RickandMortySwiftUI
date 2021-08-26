//
//  CharacterDetailView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct CharacterDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack {
                NavigationBarTitleView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top,
                             UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 0)
           
                ImageDetailView()
                    .padding(.horizontal)

                    TitleView(title: detail.selectedCharacter?.name ?? "No Name")
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    CharacterContentDetailView()
                        .padding(.horizontal)
                        .padding(.top, 15)
                        .padding(.bottom, 10)
                })//; Scroll
            }//; VStack
           // .background(Color.black.ignoresSafeArea(.all, edges: .all))
        }//; ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Previews
struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView()
    }
}
