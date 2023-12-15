//
//  ContentView.swift
//  Species
//
//  Created by Christian Manzaraz on 15/12/2023.
//

import SwiftUI

struct SpeciesListView: View {
    @StateObject var speciesVM = SpeciesViewModel()
    
    
    var body: some View {
        NavigationStack {
            List(speciesVM.speciesArray) { species in
                Text(species.name)
            }
            .font(.title2)
            .listStyle(.plain)
            .navigationTitle("Species")
        }
        .task {
            await speciesVM.getData()        
        }
        
    }
}

#Preview {
    SpeciesListView()
}
