//
//  PokeApiModel.swift
//  pokedex
//
//  Created by Ponciano Guevara Lozano on 01/07/24.
//

import Foundation

struct PokemonModel: Equatable, Codable, Identifiable {
    static func == (lhs: PokemonModel, rhs: PokemonModel) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: Int
    var name: String
    var types: [Types]
    var image: String
}

struct CommonObject: Codable {
    let name: String
    let url: String
}

struct PokeApiModel: Codable {
    let abilities: [Ability]
    let baseExperience: Int
    let cries: Cries
    let forms: [CommonObject]
    let gameIndices: [GameIndices]
    let height: Int
    let heldItems: [HeldItems]
    let id: Int
    let isDefault: Bool
    let locationAreaEncounters: String
    let moves: [Moves]
    let name: String
    let order: Int
    let pastAbilities: [String]
    let pastTypes: [String]
    let species: CommonObject
    let sprites: Sprite
    let stats: [Stats]
    let types: [Types]
    let weight: Int
    
    enum CodingKeys: String, CodingKey {
        case abilities
        case baseExperience = "base_experience"
        case cries
        case forms
        case gameIndices = "game_indices"
        case height
        case heldItems = "held_items"
        case id
        case isDefault = "is_default"
        case locationAreaEncounters = "location_area_encounters"
        case moves
        case name
        case order
        case pastAbilities = "past_abilities"
        case pastTypes = "past_types"
        case species
        case sprites
        case stats
        case types
        case weight
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.abilities = try container.decode([Ability].self, forKey: .abilities)
//        self.baseExperience = try container.decode(String.self, forKey: .baseExperience)
//        self.cries = try container.decode(Cries.self, forKey: .cries)
//        self.forms = try container.decode([CommonObject].self, forKey: .forms)
//        self.gameIndices = try container.decode([GameIndices].self, forKey: .gameIndices)
//        self.height = try container.decode(Int.self, forKey: .height)
//        self.heldItems = try container.decode([HeldItems].self, forKey: .heldItems)
//        self.id = try container.decode(Int.self, forKey: .id)
//        self.isDefault = try container.decode(Bool.self, forKey: .isDefault)
//        self.locationAreaEncounters = try container.decode(String.self, forKey: .locationAreaEncounters)
//        self.moves = try container.decode([Moves].self, forKey: .moves)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.order = try container.decode(Int.self, forKey: .order)
//        self.pastAbilities = try container.decode([String].self, forKey: .pastAbilities)
//        self.pastTypes = try container.decode([String].self, forKey: .pastTypes)
//        self.species = try container.decode(CommonObject.self, forKey: .species)
//        self.sprites = try container.decode(Sprite.self, forKey: .sprites)
//        self.stats = try container.decode([Stats].self, forKey: .stats)
//        self.types = try container.decode([Types].self, forKey: .types)
//        self.weight = try container.decode(Int.self, forKey: .weight)
//    }
    
}

struct Ability: Codable {
    let ability: CommonObject
    let isHidden: Bool
    let slot: Int

    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.ability = try container.decode(CommonObject.self, forKey: .ability)
//        self.isHidden = try container.decode(Bool.self, forKey: .isHidden)
//        self.slot = try container.decode(Int.self, forKey: .slot)
//    }
    
}

struct Cries: Codable {
    let latest: String
    let legacy: String
}

struct GameIndices: Codable {
    let gameIndex: Int
    let version: CommonObject
    
    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.gameIndex = try container.decode(Int.self, forKey: .gameIndex)
//        self.version = try container.decode(CommonObject.self, forKey: .version)
//    }
}

struct HeldItems: Codable {
    let item: CommonObject
    let versionDetails: [VersionDetails]
    
    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails = "version_details"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.item = try container.decode(CommonObject.self, forKey: .item)
//        self.versionDetails = try container.decode([VersionDetails].self, forKey: .versionDetails)
//    }
}

struct VersionDetails: Codable {
    let rarity: Int
    let version: CommonObject
}

struct Moves: Codable {
    let move: CommonObject
    let versionGroupDetails: [VersionGroupDetails]
    
    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails = "version_group_details"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.move = try container.decode(CommonObject.self, forKey: .move)
//        self.versionGroupDetails = try container.decode([VersionGroupDetails].self, forKey: .versionGroupDetails)
//    }
    

}

struct VersionGroupDetails: Codable {
    let levelLearnedAt: Int
    let moveLearnMethod: CommonObject
    let versionGroup: CommonObject
    
    enum CodingKeys: String, CodingKey {
        case levelLearnedAt = "level_learned_at"
        case moveLearnMethod = "move_learn_method"
        case versionGroup = "version_group"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.levelLearnedAt = try container.decode(Int.self, forKey: .levelLearnedAt)
//        self.moveLearnMethod = try container.decode(CommonObject.self, forKey: .moveLearnMethod)
//        self.versionGroup = try container.decode(CommonObject.self, forKey: .versionGroup)
//    }
}

    
struct Sprite: Codable {
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    let other: SpriteOther
    let versions: Versions

    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
        case other
        case versions
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.backDefault = try container.decodeIfPresent(String.self, forKey: .backDefault)
//        self.backFemale = try container.decodeIfPresent(String.self, forKey: .backFemale)
//        self.backShiny = try container.decodeIfPresent(String.self, forKey: .backShiny)
//        self.backShinyFemale = try container.decodeIfPresent(String.self, forKey: .backShinyFemale)
//        self.frontDefault = try container.decodeIfPresent(String.self, forKey: .frontDefault)
//        self.frontFemale = try container.decodeIfPresent(String.self, forKey: .frontFemale)
//        self.frontShiny = try container.decodeIfPresent(String.self, forKey: .frontShiny)
//        self.frontShinyFemale = try container.decodeIfPresent(String.self, forKey: .frontShinyFemale)
//        self.other = try container.decode(SpriteOther.self, forKey: .other)
//        self.versions = try container.decode(Versions.self, forKey: .versions)
//    }
}

struct SpriteOther: Codable {
    let dreamWorld: DreamWorld
    let officialArtwork: OfficialArtwork
    let home: SpriteHome
    let showdown: SpriteShowdown
    
    enum CodingKeys: String, CodingKey {
        case dreamWorld = "dream_world"
        case officialArtwork = "official-artwork"
        case home
        case showdown
        
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.dreamWorld = try container.decode(DreamWorld.self, forKey: .dreamWorld)
//        self.officialArtwork = try container.decode(OfficialArtwork.self, forKey: .officialArtwork)
//        self.home = try container.decode(SpriteHome.self, forKey: .home)
//        self.showdown = try container.decode(SpriteShowdown.self, forKey: .showdown)
//    }
    
}

struct DreamWorld: Codable {
    let frontDefault: String?
    let frontFemale: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.frontDefault = try container.decodeIfPresent(String.self, forKey: .frontDefault)
//        self.frontFemale = try container.decodeIfPresent(String.self, forKey: .frontFemale)
//    }
}

struct OfficialArtwork: Codable {
    let frontDefault: String
    let frontShiny: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.frontDefault = try container.decode(String.self, forKey: .frontDefault)
//        self.frontShiny = try container.decode(String.self, forKey: .frontShiny)
//    }
}

struct SpriteHome: Codable {
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.frontDefault = try container.decodeIfPresent(String.self, forKey: .frontDefault)
//        self.frontFemale = try container.decodeIfPresent(String.self, forKey: .frontFemale)
//        self.frontShiny = try container.decodeIfPresent(String.self, forKey: .frontShiny)
//        self.frontShinyFemale = try container.decodeIfPresent(String.self, forKey: .frontShinyFemale)
//    }
    
}

struct SpriteShowdown: Codable {
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
    
//    init(from decoder: any Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.backDefault = try container.decodeIfPresent(String.self, forKey: .backDefault)
//        self.backFemale = try container.decodeIfPresent(String.self, forKey: .backFemale)
//        self.backShiny = try container.decodeIfPresent(String.self, forKey: .backShiny)
//        self.backShinyFemale = try container.decodeIfPresent(String.self, forKey: .backShinyFemale)
//        self.frontDefault = try container.decodeIfPresent(String.self, forKey: .frontDefault)
//        self.frontFemale = try container.decodeIfPresent(String.self, forKey: .frontFemale)
//        self.frontShiny = try container.decodeIfPresent(String.self, forKey: .frontShiny)
//        self.frontShinyFemale = try container.decodeIfPresent(String.self, forKey: .frontShinyFemale)
//    }
}

struct Stats: Codable {
    let baseStat: Int
    let effort: Int
    let stat: CommonObject
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
    
}

struct Types: Codable {
    let slot: Int
    let type: CommonObject

    static func == (lhs: Types, rhs: Types) -> Bool {
        let lhsID = "\(lhs.slot)-in-\(lhs.type.name)"
        let rhsID = "\(rhs.slot)-in-\(rhs.type.name)"
        return lhsID == rhsID
    }
}
    
struct Versions: Codable {
    let generationI: GenerationI
    let generationIi: GenerationIi
    let generationIii: GenerationIii
    let generationIv: GenerationIv
    let generationV: GenerationV
//    let generationVi: GenerationVi
//    let generationVii: GenerationVii
//    let generationViii: GenerationViii

    enum CodingKeys: String, CodingKey {
        case generationI = "generation-i"
        case generationIi = "generation-ii"
        case generationIii = "generation-iii"
        case generationIv = "generation-iv"
        case generationV = "generation-v"
//        case generationVi = "generation-vi"
//        case generationVii = "generation-vii"
//        case generationViii = "generation-viii"
    }
    
}

struct GenerationI: Codable {
    let redBlue: RedBlue
    let yellow: RedBlue

    enum CodingKeys: String, CodingKey {
        case redBlue = "red-blue"
        case yellow
    }
}

struct GenerationIi: Codable {
    let crystal: Crystal
    let gold: Gold
    let silver: Gold
}

struct GenerationIii: Codable {
    let emerald: OfficialArtwork
    let fireredLeafgreen: Gold
    let rubySapphire: Gold

    enum CodingKeys: String, CodingKey {
        case emerald
        case fireredLeafgreen = "firered-leafgreen"
        case rubySapphire = "ruby-sapphire"
    }
}

struct GenerationIv: Codable {
    let diamondPearl: DiamontGoldPlatinum
    let heartgoldSoulsilver: DiamontGoldPlatinum
    let platinum: DiamontGoldPlatinum

    enum CodingKeys: String, CodingKey {
        case diamondPearl = "diamond-pearl"
        case heartgoldSoulsilver = "heartgold-soulsilver"
        case platinum
    }
}

struct GenerationV: Codable {
    let blackWhite: DiamontGoldPlatinum
    
    // animated is mising

    enum CodingKeys: String, CodingKey {
        case blackWhite = "black-white"
    }
}

struct RedBlue: Codable {
    let backDefault: String
    let backGray: String
    let backTransparent: String
    let frontDefault: String
    let frontGray: String
    let frontTransparent: String

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backGray = "back_gray"
        case backTransparent = "back_transparent"
        case frontDefault = "front_default"
        case frontGray = "front_gray"
        case frontTransparent = "front_transparent"
    }
}

struct Crystal: Codable {
    let backDefault: String
    let backShiny: String
    let backShinyTransparent: String
    let backTransparent: String
    let frontDefault: String
    let frontShiny: String
    let frontShinyTransparent: String
    let frontTransparent: String

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backShiny = "back_shiny"
        case backShinyTransparent = "back_shiny_transparent"
        case backTransparent = "back_transparent"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case frontShinyTransparent = "front_shiny_transparent"
        case frontTransparent = "front_transparent"
    }
}

struct Gold: Codable {
    let backDefault: String
    let backShiny: String
    let frontDefault: String
    let frontShiny: String
    let frontTransparent: String?

    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backShiny = "back_shiny"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case frontTransparent = "front_transparent"
    }
}

struct DiamontGoldPlatinum: Codable {
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String?
    let frontFemale: String?
    let frontShiny: String?
    let frontShinyFemale: String?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
    }
}
