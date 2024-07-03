//
//  PokeApiService.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 01/07/24.
//

import Foundation


final class PokeApiService: ObservableObject {
    private let limit: Int = 20
    private let http: Http = Http()
    @Published var pokemonList: [PokemonModel] = []
    
    func getPokemonList() {
        for index in 1...limit {
            let pokemonUrl = URL(string: "https://pokeapi.co/api/v2/pokemon/\(index)/")
            http.get(url: pokemonUrl!, type: PokeApiModel.self, completionHandler: { (response) in
                if response.name != "" {
                    self.formatData(data: response)
                }
            }) { (error) in
                print("Could not fetch pokemons!")
            }
        }
    }
    
    func formatData(data: PokeApiModel){
        let pokemon = PokemonModel(id: data.id, name: data.name, types: data.types, image: data.sprites.other.officialArtwork.frontDefault)
        print("pokemon: \(pokemon.name)")
        print(pokemon)
        DispatchQueue.main.async {
            self.pokemonList.append(pokemon)
        }
    }
}
