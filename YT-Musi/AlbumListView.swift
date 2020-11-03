//
//  MainContentView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/1/20.
//

import SwiftUI

struct AlbumListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(albumList, id: \.id) { album in
                                AlbumCardView(album: album)
                            }
                        } .frame(height : 400)
                    }
                    Text("Top Albums")
                        .font(.largeTitle)
                        .bold()
                    VStack {
                        ForEach(albumList, id: \.id) { album in
                            TopAlbumCard(album: album)
                        }
                    }
                } .padding()
            } .navigationBarTitle("My Albums")
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
