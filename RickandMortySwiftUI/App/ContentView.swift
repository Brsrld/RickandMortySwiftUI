//
//  ContentView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject var service = Service()
    @State var items = [Character]()
    @EnvironmentObject var detail: CharacterDetail
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if detail.showingCharacter == false && detail.selectedCharacter == nil {
                VStack(spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top,
                                 UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.black)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 0)
                    
                    TitleView(title: "Characters")
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        ForEach(items) { item in
                            CharacterItemView(name: item.name, species: item.species, image: item.image)
                                .onTapGesture {
                                    feedback.impactOccurred()
                                    withAnimation(.easeOut) {
                                        detail.selectedCharacter = item
                                        detail.showingCharacter  = true
                                    }
                                }
                        }.onAppear() {
                            service.loadData { (data) in
                                self.items = data
                            }
                        }//; Loop
                    })//; Scroll
                }//; VStack
                .background(Color.black.ignoresSafeArea(.all, edges: .all))
            } else {
                CharacterDetailView()
            }
        }//; ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CharacterDetail())
    }
}
