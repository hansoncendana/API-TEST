//
//  BossView.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//

import SwiftUI

struct PVView: View {
    @StateObject var HonkaiPlaylistData = HonkaiPlaylist()
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack {
                        let columns = Array(repeating: GridItem(), count: 1)
                        LazyVGrid(columns:columns){
                            ForEach (HonkaiPlaylistData.HonkaiPlaylistItem) { item in
                                NavigationLink(destination: WebView(urlString: "https://www.youtube.com/watch?v=" + item.contentDetails.videoId)) {
                                    AsyncImage( url: item.snippet.thumbnails.medium.url, placeholder: { Text("Loading ...") },image: { Image(uiImage: $0).resizable() })
                                        .frame(width:200, height:110)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("PV")
            .background(Image("bg"))
        }
    }
}

struct PV_Previews: PreviewProvider {
    static var previews: some View {
        PVView()
    }
}
