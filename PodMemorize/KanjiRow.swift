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
        HStack {
            Text(kanji.kanji)
            Spacer()
                .padding()
                .frame(width: 40.0)
            Text(kanji.onReading[0])
            Text(kanji.kunReading[0])
        }
    }
}

struct KanjiRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            KanjiRow(kanji: kanjis[0])
            KanjiRow(kanji: kanjis[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
