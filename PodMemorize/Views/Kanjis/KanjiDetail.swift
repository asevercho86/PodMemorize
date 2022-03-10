//
//  KanjiDetail.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/23.
//

import SwiftUI

struct KanjiDetail: View {
    @EnvironmentObject var modelData: ModelData
    var kanji: Kanji
    
    var kanjiIndex: Int {
        modelData.kanjis.firstIndex(where: { $0.id == kanji.id })!
    }
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                Text(kanji.kanji)
                    .font(.title)
                
                HStack {
                    Text(kanji.onReading[0])
                    Spacer()
                    Text(kanji.kunReading[0])
                    FavoriteButton(isSet: $modelData.kanjis[kanjiIndex].isFavorite)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text(kanji.meaning[0])
                    .font(.title2)
                Text(kanji.pronunciation[0])
            }
            .padding()
            
            
        }
        .navigationTitle(kanji.kanji)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct KanjiDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        KanjiDetail(kanji: ModelData().kanjis[0])
            .environmentObject(modelData)
    }
}
