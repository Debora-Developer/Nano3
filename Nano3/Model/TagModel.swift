//
//  Untitled.swift
//  Nano3
//
//  Created by Débora Costa on 02/10/25.
//
import Foundation

struct TagModel: Identifiable {
    var id: UUID
    var type: TagType //Categoria das tags
    var name: String //nome das tags
    
}

enum TagType: String, CaseIterable {
    case location
    case time
    case people
    case tone
}




