//
//  HonkaiPlaylist.swift
//  EBook
//
//  Created by User19 on 2022/12/28.
//

import Foundation
import CoreImage
import SwiftUI

class HonkaiPlaylist: ObservableObject {
    @Published var HonkaiPlaylistItem = [Items]()
    
    init() {
        getHonkai(searchText: nil)
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
    func getHonkai(searchText: String?) {
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=PLLX1bpH-W3ZBuRQLl41bvZflr_8IoIAYe&key=AIzaSyDzgI-dOBLmTfdkeIKzmpAixbwZ9fxZETo&maxResults=15"
        if let url = URL(string: urlString) {
                    URLSession.shared.dataTask(with: url) { data, response, error in
                        if let data = data {
                            let decoder = JSONDecoder()
                            decoder.dateDecodingStrategy = .iso8601
                            do {
                                let searchResponse = try decoder.decode(SearchResponse.self, from: data)
                                DispatchQueue.main.async {
                                    if let searchText = searchText{
                                        self.HonkaiPlaylistItem = searchResponse.items.filter({
                                            $0.snippet.title.contains(searchText)
                                        })
                                    }
                                    else{
                                        self.HonkaiPlaylistItem = searchResponse.items
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
