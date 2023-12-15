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
            ZStack {
                List(speciesVM.speciesArray) { species in
                    NavigationLink {
                        DetailView(species: species)
                    } label: {
                        Text(species.name)
                    }
                    
                }
                .font(.title2)
                .listStyle(.plain)
                .navigationTitle("Species")
                
                if speciesVM.isLoading {
                    
                    ProgressView()
                        .scaleEffect(4)
                        .tint(.green)
                }
            }
            .toolbar {
                ToolbarItem(placement: .status) {
                    Text("\(speciesVM.speciesArray.count) Species Returned.")
                }
            }
            
        }
        .task {
            await speciesVM.getData()
        }
        
    }
}

#Preview {
    SpeciesListView()
}
