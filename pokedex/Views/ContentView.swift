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
        NavigationSplitView {
            if pokeApiService.pokemonList.count > 10 {
                List {
                    ForEach(pokeApiService.pokemonList, id: \.id){ pokemon in
                        NavigationLink{
                            PokemonDetail(pokemon: pokemon)
                        } label: {
                            PokemonRow(pokemon: pokemon)
                        }
                    }
                }
                .animation(.default, value: pokeApiService.pokemonList)
                .navigationTitle("Pokemons")
            }else {
                Text("loading...")
                    .font(.title)
                    .foregroundStyle(.red)
            }
        } detail: {
            Text("Select a Pokemon")
        }
        .onAppear {
            pokeApiService.getPokemonList()
        }
    }
}

#Preview {
    ContentView()
}
