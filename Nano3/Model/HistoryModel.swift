//
//  Modelhistory.swift
//  Nano3
//
//  Created by Débora Costa on 02/10/25.
//

import SwiftUI

struct HistoryModel: Identifiable {
    
    var id = UUID()
    var title: String = ""
    var text: String = ""
    var tags: [TagModel] = [] //lista da TagModel
}
