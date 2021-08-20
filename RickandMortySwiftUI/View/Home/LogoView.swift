//
//  LogoView.swift
//  RickandMortySwiftUI
//
//  Created by Baris Saraldi on 20.08.2021.
//

import SwiftUI

struct LogoView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        HStack(spacing:4) {
            Image("rick")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text("Rick".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
            Text("and".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
            Text("Morty".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
        }//; Hstack
    }
}

// MARK: - Preview
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}
