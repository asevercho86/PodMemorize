//
//  KanjiList.swift
//  PodMemorize
//
//  Created by DEOKSHIN CHO on 2022/02/23.
//

import SwiftUI

struct KanjiList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
    
    var filteredKanjis: [Kanji] {
        modelData.kanjis.filter { kanji in
            (!showFavoritesOnly || kanji.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredKanjis) { kanji in
                    NavigationLink {
                        KanjiDetail(kanji: kanji)
                    } label: {
                        KanjiRow(kanji: kanji)
                    }
                }
            }
            .navigationTitle("Kanji")
        }
    }
}

struct KanjiList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in KanjiList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
        KanjiList()
            .environmentObject(ModelData())
    }
}
