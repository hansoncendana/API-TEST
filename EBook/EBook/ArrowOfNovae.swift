//
//  ArrowOfNovae.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//
import AVKit
import SwiftUI

struct ArrowOfNovae: View {
    var body: some View {
        ScrollView {
            Text("6.0 Arrow Of Novae")
                .font(.largeTitle)
                .foregroundColor(.white)
            Text("***Herrsher of Human: Ego***")
                .foregroundColor(.orange)
                .bold()
            Image("Ely")
                .resizable()
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Skill Showcase")
                .foregroundColor(.orange)
            GifImage("Ely1")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("Ely3")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("Ely6")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .background(Image("bg"))
    }
}

struct ArrowOfNovae_Previews: PreviewProvider {
    static var previews: some View {
        ArrowOfNovae()
    }
}
