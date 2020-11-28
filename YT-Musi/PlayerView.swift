//
//  PlayerView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/5/20.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 24) {
                
                Image("mukunda-cover")
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.width - 24)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                VStack(spacing: 8) {
                    Text("Song Title")
                        .font(.title)
                        .bold()
                    Text("Artist name")
                        .font(.headline)
                }
                HStack {
                    Button(action: {
                        print("rewind")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.blue)
                                .shadow(radius: 10)
                            Image(systemName: "backward.fill")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    
                    Button(action: {
                        print("play")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.blue)
                                .shadow(radius: 10)
                            Image(systemName: "pause.fill")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                    
                    Button(action: {
                        print("forward")
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.blue)
                                .shadow(radius: 10)
                            Image(systemName: "forward.fill")
                                .foregroundColor(.white)
                                .font(.title)
                        }
                    }
                }
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
