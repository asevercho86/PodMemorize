//
//  KanjiRow.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/13.
//

import SwiftUI

struct KanjiRow: View {
    var kanji: Kanji
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct KanjiRow_Previews: PreviewProvider {
    static var previews: some View {
        KanjiRow(kanji: kanjis[0])
    }
}
