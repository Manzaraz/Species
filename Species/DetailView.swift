//
//  DetailView.swift
//  Species
//
//  Created by Christian Manzaraz on 15/12/2023.
//

import SwiftUI

struct DetailView: View {
    let species: Species
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(species.name)
                .font(.largeTitle)
                .bold()
            
            Rectangle()
                .frame(height: 2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.gray)
            
            Group {
                HStack (alignment: .top) {
                    Text("Classification: ")
                        .bold()
                    Text(species.classification)
                }
                HStack (alignment: .top) {
                    Text("Designation: ")
                        .bold()
                    Text(species.designation)
                }
                HStack (alignment: .top) {
                    Text("Height: ")
                        .bold()
                    Text(species.average_height)
                    Spacer()
                    Text("Lifespan: ")
                        .bold()
                    Text(species.average_height)
                }
                HStack (alignment: .top) {
                    Text("Language: ")
                        .bold()
                    Text(species.language)
                }
                HStack (alignment: .top) {
                    Text("Skin Colors:")
                        .bold()
                    Text(species.skin_colors)
                }
                HStack (alignment: .top) {
                    Text("Hair colors:")
                        .bold()
                    Text(species.hair_colors)
                }
                HStack (alignment: .top) {
                    Text("Eye Colors:")
                        .bold()
                    Text(species.eye_colors)
                }
            }
            .font(.title3)
            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(species: Species(name: "Swifter", classification: "Coder", designation: "sentient", average_height: "175", average_lifespan: "83", language: "Swift", skin_colors: "various", hair_colors: "various or none", eye_colors: "blue, green, brown, black, hazel, gray or violet"))
}
