//
//  StoryView.swift
//  Nano3
//
//  Created by Débora Costa on 03/10/25.
//

import SwiftUI

struct StoryView: View {
    let storyDetail: StoryModel
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                
                // Título
                Text(storyDetail.title)
                    .font(.system(size: 25))
                    .fontWidth(.expanded)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // Corpo do texto
                Text(storyDetail.description)
                    .font(.body)
                
                // Tags
                HStack {
                    ForEach(storyDetail.tags) { tag in
                        Text(tag.name)
                            .font(.caption)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(32)
                    }
                }
                
                Spacer() // empurra o conteúdo para cima
            }
            .padding(.horizontal, 32)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("História de viagem")
                        .font(.headline)
                }
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        // ação abrir sheet
                    } label: {
                        Image(systemName: "ellipsis")
                            //.foregroundStyle(.white)
                    }
                }
                ToolbarItem(placement: .navigation) {
                    Button {
                        // ação do botão voltar
                    } label: {
                        Image(systemName: "chevron.left")
                            //.foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

//precisa pintar a toolbar de azul

#Preview {
    StoryView(
        storyDetail: StoryModel(
            title: "Confundi 2 milhas com 2 quilômetros!",
            description: "Era de noite, estávamos com muita fome e um pouco perdidos nas ruas. Não sabíamos falar francês. Chegou um homem fingindo que ia nos assaltar e quando fomos perceber ele na verdade era dono de um restaurante e nos chamou para experimentar. A gente tava com fome e fomos lá comer.",
            tags: [
                TagModel(id: UUID(), type: .location, name: "Paris"),
                TagModel(id: UUID(), type: .people, name: "Amigos"),
                TagModel(id: UUID(), type: .tone, name: "Engraçado")
            ]
        )
    )
}
