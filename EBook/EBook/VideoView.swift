//
//  VideoView.swift
//  EBook
//
//  Created by User19 on 2022/12/27.
//
import SwiftUI


struct VideoItemView: View {
    let item: YoutubePlaylist.Items
    
    var body: some View{
        HStack{
            AsyncImage( url: item.snippet.thumbnails.medium.url, placeholder: { Text("Loading ...") },image: { Image(uiImage: $0).resizable() })
                .frame(width:160, height:90)
            VStack(alignment: .leading){
                Text(item.snippet.title)
                    .bold()
                    .font(.system(size:10))
            }
        }
    }
}
