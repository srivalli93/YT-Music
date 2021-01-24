//
//  MainContentView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/5/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            PlayerView()
                .tag(0)
                .tabItem {
                    VStack {
                        Image(systemName: "music.note")
                        Text("Player")
                    }
                }
            SearchView()
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                }
            AlbumListView()
                .tag(3)
                .tabItem {
                    VStack {
                        Image(systemName: "icloud.and.arrow.down")
                        Text("Saved Songs")
                    }
                }
            
        }
        .accentColor(.blue)
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
