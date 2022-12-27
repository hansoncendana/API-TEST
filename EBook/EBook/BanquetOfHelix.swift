//
//  BanquetOfHelix.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//
import AVKit
import SwiftUI

struct BanquetOfHelix: View {
    var body: some View {
        ScrollView {
            Text("5.9 Banquet Of Helix")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text("***Helical Contraption***")
                .foregroundColor(.orange)
                .bold()
            Text("Reverse all purposes, subvert the norm, forge illusions from reality, and create miracles from the unknown.")
                .foregroundColor(.white)
            Image("VV")
                .resizable()
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Skill Showcase")
                .foregroundColor(.orange)
            GifImage("VV1")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("VV3")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("VV2")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .background(Image("bg"))
    }
}

struct BanquetOfHelix_Previews: PreviewProvider {
    static var previews: some View {
        BanquetOfHelix()
    }
}
