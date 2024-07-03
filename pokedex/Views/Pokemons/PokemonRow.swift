//
//  PokemonRow.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 02/07/24.
//

import SwiftUI

struct PokemonRow: View {
    var pokemon: PokemonModel
    
    var body: some View {
        HStack {
            URLImage(url: pokemon.image)
                .frame(width: 50, height: 50)
            Text(pokemon.name)
            Spacer()
        }
    }
}

#Preview {
    PokemonRow(pokemon: ResourcesData().pokemons[0])
}
