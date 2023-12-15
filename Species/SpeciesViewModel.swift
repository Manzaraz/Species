//
//  SpeciesViewModel.swift
//  Species
//
//  Created by Christian Manzaraz on 15/12/2023.
//

import Foundation

@MainActor
class SpeciesViewModel: ObservableObject {
    struct Returned: Codable {
        var next: String? //  It's an optional value because it will be null on last page.
        var results: [Species]
    }
    
    @Published var speciesArray: [Species] = []
    var urlString = "https://swapi.dev/api/species"
    
    
    
}
