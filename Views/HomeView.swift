//
//  HomeView.swift
//  Nano3
//
//  Created by Débora Costa on 03/10/25.
//

//
//  FeedView.swift
//  Nano3
//
//  Created by Débora Costa on 02/10/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var travelStories: [StoryModel] = []
    // Uma lista de histórias
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(travelStories) { StoryModel in
                        Text(StoryModel.title)
                            .font(.headline)
                    }
                }
                // Toolbar
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Histórias")
                            .font(Font.largeTitle.bold())
                            .fontWidth(.expanded)
                            .foregroundStyle(.white)
                    }
                    ToolbarItem(placement: .primaryAction) {
                        Button {
                            // ação do botão
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
        }
        // esconde o botão de voltar
        .navigationBarBackButtonHidden()
        // aplica background de imagem
        .background {
            Image("background2")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}
