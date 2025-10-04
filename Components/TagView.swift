//
//  TagView.swift
//  Nano3
//
//  Created by Débora Costa on 03/10/25.
//

//
//  SourceCardView.swift
//  Quotes
//
//  Created by Giovanni Galarda Strasser on 01/10/25.
//

import SwiftUI

struct TagView: View {
    let tag: TagModel
    var body: some View {
        Text("\(tag.name)")
            .padding(16)
            .font(.title)
            .background(.blue)
            .cornerRadius(32)
            .foregroundColor(.white)
    }
}

#Preview {
    TagView(tag: TagModel(id: UUID(), type: .location ,name: "Inglaterra"))
}
