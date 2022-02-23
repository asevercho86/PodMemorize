//
//  KanjiList.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/23.
//

import SwiftUI

struct KanjiList: View {
    var body: some View {
        NavigationView {
            List(kanjis) { kanji in
                NavigationLink {
                    KanjiDetail(kanji: kanji)
                } label: {
                    KanjiRow(kanji: kanji)
                }
            }
            .navigationTitle("Kanji")
        }
    }
}

struct KanjiList_Previews: PreviewProvider {
    static var previews: some View {
        KanjiList()
    }
}
