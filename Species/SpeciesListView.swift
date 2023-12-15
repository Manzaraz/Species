//
//  ContentView.swift
//  Species
//
//  Created by Christian Manzaraz on 15/12/2023.
//

import SwiftUI

struct SpeciesListView: View {
    @State private var speciesArray = [ "Hutt", "Ewok", "Wookiee", "Droid", "Human" ]
    
    
    var body: some View {
        NavigationStack {
            List(speciesArray, id: \.self) { species in
                Text(species)
            }
            .font(.title2)
            .listStyle(.plain)
            .navigationTitle("Species")
        }
        
    }
}

#Preview {
    SpeciesListView()
}
