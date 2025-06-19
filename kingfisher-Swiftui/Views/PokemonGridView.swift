//
//  PokemonGridView.swift
//  kingfisher-Swiftui
//
//  Created by Md Towfiqul Islam on 6/19/25.
//

import SwiftUI

struct PokemonGridView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject private var viewModel = PokemonViewModel()
    
    
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(
                    gradient: Gradient(colors: [.green.opacity(0.2), .pink.opacity(0.3)]), startPoint:.topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    LazyVGrid(columns: gridItems, spacing: 16){
                        ForEach(viewModel.pokemon){
                            pokemon in
                            NavigationLink{
                                PokemonDetailsView(viewModel: viewModel, pokemon: pokemon)
                            } label: {
                                PokeCell(poke: pokemon, viewModel:viewModel)
                            }
                        }
                    }.navigationTitle("Pokemon \(viewModel.pokemon.count)")
                }
            }
        }
    }
}

#Preview {
    PokemonGridView()
}
