//
//  AlbumDetailView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/3/20.
//

import SwiftUI

struct AlbumDetailView: View {
    var album: Album
    var body: some View {
        ScrollView {
            VStack {
                Image(album.albumArtString)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .cornerRadius(8)
                HStack {
                    Text("Artist")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                    Text(album.artistName)
                        .font(.subheadline)
                    Spacer()
                } .padding()
                HStack {
                    Text("Published")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                    Text(album.publishDate)
                        .font(.subheadline)
                    Spacer()
                } .padding()
                HStack {
                    Text("Summary")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                    Spacer()
                } .padding([.leading])
                
                Text(album.description)
                    .font(.subheadline)
                    .padding([.leading, .trailing])
                Spacer()
            } .navigationBarTitle("Mukunda")
                .padding()
        } . accentColor(.blue)
    }
}

struct AlbumDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumDetailView(album: albumList[1])
    }
}
