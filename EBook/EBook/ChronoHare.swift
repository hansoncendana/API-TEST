//
//  ChronoHare.swift
//  EBook
//
//  Created by User19 on 2022/12/28.
//

import AVKit
import SwiftUI

struct ChronoHare: View {
    var body: some View {
        ScrollView {
            Text("6.2 The Chrono and        The Hare")
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Text("***ChronoNavi***")
                .foregroundColor(.orange)
                .bold()
            Image("AI")
                .resizable()
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Skill Showcase")
                .foregroundColor(.orange)
            GifImage("AI1")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            GifImage("AI2")
                .frame(width: 390, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .background(Image("bg"))
    }
}

struct ChronoHare_Previews: PreviewProvider {
    static var previews: some View {
        ChronoHare()
    }
}
