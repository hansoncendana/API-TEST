//
//  MoonshadeEpic.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//
import AVKit
import SwiftUI

struct MoonshadeEpic: View {
    @State private var player = AVPlayer()
    var body: some View {
        ScrollView {
            Text("6.1 MoonShade Epic")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text("New Battlesuit")
                .foregroundColor(.white)
                .font(.title)
            Text("***Jade Knight Li Sushang***")
                .foregroundColor(.orange)
                .bold()
            Image("Sus")
                .resizable()
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Skill Showcase")
                .foregroundColor(.orange)
            GifImage("Sus1")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("Sus3")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .background(Image("bg"))
    }
}

struct MoonshadeEpic_Previews: PreviewProvider {
    static var previews: some View {
        MoonshadeEpic()
    }
}
