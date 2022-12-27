//
//  YoutubePlaylist.swift
//  EBook
//
//  Created by User19 on 2022/12/27.
//

import Foundation
import CoreImage
import SwiftUI

class YoutubePlaylist: ObservableObject {
    @Published var youtubePlaylistItem = [Items]()
    
    init() {
        getYoutube(searchText: nil)
    }
    struct SearchResponse: Codable {
            let items: [Items]
        }
        
        struct Items: Codable, Identifiable {
            var id: String {contentDetails.videoId}
            let snippet: Snippet
            let contentDetails: ContentDetails
            
            struct Snippet: Codable{
                let publishedAt: Date
                let title: String
                let description: String
                let thumbnails: Thumbnails
                
                struct Thumbnails: Codable {
                    let medium: Image
                    
                    struct Image: Codable{
                        let url: URL
                        
                    }
                }
            }
            
            struct ContentDetails: Codable{
                let videoId: String
            }
            
        }
    func getYoutube(searchText: String?) {
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=PLEFjMtmQPRPskPSdqPCfYB5C8Gt3ejsCl&key=AIzaSyDhdhMuHpY8rXVot7J2Sszla7nuooIfHb8&maxResults=50"
        if let url = URL(string: urlString) {
                    URLSession.shared.dataTask(with: url) { data, response, error in
                        if let data = data {
                            let decoder = JSONDecoder()
                            decoder.dateDecodingStrategy = .iso8601
                            do {
                                let searchResponse = try decoder.decode(SearchResponse.self, from: data)
                                DispatchQueue.main.async {
                                    if let searchText = searchText{
                                        self.youtubePlaylistItem = searchResponse.items.filter({
                                            $0.snippet.title.contains(searchText)
                                        })
                                    }
                                    else{
                                        self.youtubePlaylistItem = searchResponse.items
                                    }
                                }
                                print("Get")
                            } catch {
                                print(error)
                            }
                        }
                    }.resume()
                }
            }
}
