//
//  CardView.swift
//  Nano3
//
//  Created by Débora Costa on 03/10/25.
//

import SwiftUI

struct CardView: View {
    let storyCard: StoryModel
    
    var body: some View {
        NavigationLink {
            // tela de destino
            ContentView()
        } label: {
            VStack(alignment: .leading, spacing: 8) {
                // título
                Text(storyCard.title)
                    .font(.system(size: 25))
                    .fontWidth(.expanded)
                    .foregroundStyle(Color(.darkGray))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                // tags
                HStack {
                    ForEach(storyCard.tags) { tag in
                        Text(tag.name)
                            .font(.caption)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(Color.blue)
                            .foregroundStyle(.white)
                            .cornerRadius(32)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 20)
        .frame(width: 346, alignment: .center)
        .background(.white)
        .cornerRadius(32)
    }
}

#Preview {
    CardView(
        storyCard: StoryModel(
            title: "Confundi 2 milhas com 2 quilometros!",
            tags: [
                TagModel(id: UUID(), type: .location, name: "Paris"),
                TagModel(id: UUID(), type: .people, name: "Amigos"),
                TagModel(id: UUID(), type: .tone, name: "Engraçado")
            ]
        )
    )
}
