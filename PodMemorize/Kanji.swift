//
//  Kanji.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/12.
//

import Foundation

struct Kanji: Hashable, Codable{
    var id: Int
    var kanji: String
    var strokeCount: Int
    var onReading: Array<String>
    var kunReading: Array<String>
    var isMemorize: Bool
    var isFavorite: Bool
    
    
}
