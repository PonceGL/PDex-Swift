//
//  URLImage.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 02/07/24.
//

import SwiftUI

struct URLImage: View {
    var url: String
    var body: some View {
        AsyncImage(url: URL(string: url)){ result in
            
            if let image = result.image {
                image
                    .resizable()
                    .scaledToFill()
                    .aspectRatio(contentMode: .fit)
            } else if result.error != nil {
                Image(systemName: "questionmark.diamond")
                    .imageScale(.large)
            } else {
                ProgressView()
            }
        }
    }
}

#Preview {
    URLImage(url: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png")
}
