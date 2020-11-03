//
//  TopAlbumCard.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/2/20.
//

import SwiftUI

struct TopAlbumCard: View {
    var album : Album
    
    var body: some View {
        HStack {
            Image(album.albumArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(album.name)
                    .font(.headline)
                Text(album.artistName)
                    .font(.subheadline)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            MoreButtonView(album: album)
        } .padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.4), lineWidth: 1)
        )
        .shadow(radius: 1.0)
    }
}

struct MoreButtonView: View {
    var album: Album
    
    var body: some View {
        NavigationLink(destination: AlbumDetailView(album: album)) {
            VStack {
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct TopAlbumCard_Previews: PreviewProvider {
    static var previews: some View {
        TopAlbumCard(album: albumList[1])
            .previewLayout(.fixed(width: 380, height: 75))
    }
}
