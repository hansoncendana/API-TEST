//
//  YoutubeView.swift
//  EBook
//
//  Created by User19 on 2022/12/27.
//

import UIKit
import WebKit
import SwiftUI

struct YoutubeView: View {
    @StateObject var youtubePlaylistData = YoutubePlaylist()
    @State private var searchText = ""
    @State private var isPresenting = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(youtubePlaylistData.youtubePlaylistItem) { item in
                    DisclosureGroup {
                        NavigationLink(destination: WebView(urlString: "https://www.youtube.com/watch?v=" + item.contentDetails.videoId), isActive: $isPresenting) {
                            Text("Go")
                                .multilineTextAlignment(.center)
                        }
                    } label: {
                        VideoItemView(item:item)
                    }
                    .listRowBackground(background(Color.black))
                }
            }
        }

        .navigationTitle("Guides")
    }
    
}

struct YoutubeView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeView()
    }
}


