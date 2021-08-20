//
//  TitleView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properies
    
    var title: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.accentColor)
            
            Spacer()
        }//; HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Characters")
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
