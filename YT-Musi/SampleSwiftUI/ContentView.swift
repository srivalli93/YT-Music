//
//  ContentView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 10/7/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            GreenImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .padding()
                    .font(.title)
                HStack {
                    Text("My National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("Oklahoma")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
