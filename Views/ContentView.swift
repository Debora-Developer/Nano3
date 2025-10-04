//
//  ContentView.swift
//  Nano3
//
//  Created by Débora Costa on 30/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @State var cardList: [StoryModel] = []
        // Uma lista de histórias
        
        NavigationStack{
            ScrollView(.vertical){
                VStack {
                    Text("Histórias")
                        .font(Font.largeTitle.bold())
                        .fontWidth(.expanded)
                        .foregroundStyle(.white)
                    
                    ForEach(cardList) { StoryModel in
                        Text(StoryModel.title)
                            .font(.headline)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button {
                            // ação do botão
                        } label: {
                            Image(systemName: "ellipsis")

                        }
                    }
                }

            }
            .background {
                Image("background2")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
