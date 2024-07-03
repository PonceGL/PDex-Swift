//
//  PokemonDetail.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 02/07/24.
//

import SwiftUI

struct PokemonDetail: View {
    var pokemon: PokemonModel
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                URLImage(url: pokemon.image)
                    .frame(width: geometry.size.width, height: geometry.size.width)
                Text(pokemon.name)
                    .font(.title)
                Spacer()
            }
        }
    }
}

#Preview {
    PokemonDetail(pokemon: ResourcesData().pokemons[0])
}
