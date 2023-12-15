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
    @Published var isLoading = false
    var urlString = "https://swapi.dev/api/species"
    
    func getData() async {
        isLoading = true
        print("🕸️ We are accessing the url \(urlString).")
        
        guard let url = URL(string: urlString) else {
            print("😡 ERROR: Could not convert \(urlString) to a URL.")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            do {
                let returned = try JSONDecoder().decode(Returned.self, from: data)
//                print("returned: \(returned)")
                urlString = returned.next ?? ""
                speciesArray += returned.results
                isLoading = false
            } catch  {
                print("😡 JSON ERROR: Could not convert data into JSON. \(error.localizedDescription)")
                
                isLoading = false
            }
        } catch  {
            print("😡 ERROR: Could not get data from urlString \(urlString).")
            isLoading = false
        }
    }
    
    func loadNextIfNeeded(species: Species) async {
        guard let lastSpecies = speciesArray.last else { return }
        if lastSpecies.id == species.id && urlString != "" {
            await getData()
        }
    }
}
