//
//  UpdateView.swift
//  EBook
//
//  Created by User06 on 2022/10/23.
//

import SwiftUI

struct UpdateView: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Text("Recent Release")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                }
                HStack {
                    ScrollView() {
                        Text("6.2 The Chrono and the Hare")
                            .foregroundColor(.white)
                        NavigationLink(
                            destination: ChronoHare(),
                            label: {
                                Image("6.2 Chrono Hare")
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                        })
                        Text("6.1 Moonshade Epic")
                            .foregroundColor(.white)
                        NavigationLink(
                            destination: MoonshadeEpic(),
                            label: {
                                Image("6.1 Moonshade Epic")
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                        })
                        Text("6.0 Arrow of Novae")
                            .foregroundColor(.white)
                        NavigationLink(
                            destination: ArrowOfNovae(),
                            label: {
                                Image("6.0 Arrow of Novae")
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                        })
                        Text("5.9 Banquet of Helix")
                            .foregroundColor(.white)
                        NavigationLink(
                            destination: BanquetOfHelix(),
                            label: {
                                Image("5.9 Banquet of Helix")
                                    .resizable()
                                    .scaledToFit()
                                    .clipped()
                        })
                    }
                }

            }
            .background(Image("bg"))
        }
    }
}

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateView()
    }
}

