//
//  HomeView.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//

import SwiftUI
import AVKit

struct HomeView: View {
    let valks = ["Kiana", "Mei", "Bronya", "Fu Hua", "Elysia", "Aponia", "Vill-V", "Griseo"]
    let player = AVPlayer()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:150)
                    Group {
                        Text("Honkai. A raw, unbridled phenomenon whose ultimate goal is to destroy humanity. You are the Captain commanding these Valkyries.")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Text("You must face humanity's greatest enemy along their side.")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    Text("VALKYRIES")
                        .foregroundColor(.white)
                    let columns = Array(repeating: GridItem(), count: 2)
                    ScrollView {
                        LazyVGrid (columns:columns) {
                            ForEach(valks.indices, id:\.self) { item in
                                ValkView(valk: valks[item])
                            }
                        }
                    }
                    
                    HStack {
                        Link(destination: URL(string: "https://honkaiimpact3.hoyoverse.com")!, label: {
                            Image("Honkai")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height: 30)
                                .padding(10)
                        })
                        Link(destination: URL(string:"https://www.youtube.com/c/HonkaiImpact3rdGlobal")!, label: {
                            Image("YT")
                                .resizable()
                                .scaledToFit()
                                .frame(width:30, height: 30)
                                .padding(10)
                        })
                    }
                }.background(Image("bg"))
            }
        }
    }
}

struct ValkView:View {
    let valk: String
    var body: some View {
        VStack {
            Image(valk)
                .resizable()
                .scaledToFill()
                .clipped()
            Text(valk)
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
