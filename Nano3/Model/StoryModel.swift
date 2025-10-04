//
//  Modelhistory.swift
//  Nano3
//
//  Created by Débora Costa on 02/10/25.
//

import SwiftUI

struct StoryModel: Identifiable {
    
    var id = UUID()
    var title: String = ""
    var description: String = ""
    var tags: [TagModel] = [] //lista da TagModel
}
