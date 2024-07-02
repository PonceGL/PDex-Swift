//
//  ContentView.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 01/07/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pokeApiService: PokeApiService = PokeApiService()
    
    var body: some View {
        NavigationView {
            if pokeApiService.pokemonList.count > 10 {
                Form {
                    ForEach(pokeApiService.pokemonList, id: \.id){ pokemon in
                        Text(pokemon.name)
                    }
                }
            }else {
                Text("loading...")
                    .font(.title)
                    .foregroundStyle(.red)
            }
        }
        .onAppear {
            print("onAppear")
            pokeApiService.getPokemonList()
        }
    }
}

#Preview {
    ContentView()
}
