//
//  AlbumCardView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/1/20.
//

import SwiftUI

struct AlbumCardView: View {
    var album: Album
    
    
    var body: some View {
        VStack {
            Image(album.albumArtString)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: 300)
            VStack {
                Text(album.name)
                    .font(.headline)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                Text(album.artistName)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                NavigationLink(
                    destination: AlbumDetailView(album: album),
                    label: {
                        Text("Read more")
                            .font(.caption)
                            .foregroundColor(.accentColor)
                    })
            }
            .padding()
            Spacer()
        }
        .frame(height: 400)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .shadow(radius: 1.5)
    }
}

struct AlbumCardView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCardView(album: albumList[0])
            .previewLayout(.fixed(width: 300, height: 510))
        AlbumCardView(album: albumList[1])
            .previewLayout(.fixed(width: 300, height: 510))
    }
}
