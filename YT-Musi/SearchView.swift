//
//  SearchView.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/5/20.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    @State private var isEditing = false
    
    let songs: [String] = ["Blinding Lights", "That Way", "This Is Me"]
    
    var body: some View {
        VStack {
            HStack {
                TextField("Search songs", text: $searchText, onCommit:  {
                    print(self.searchText)
                })
                .padding(7)
                .padding(.horizontal, 25)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .accentColor(.blue)
                .cornerRadius(8.0)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                        if isEditing {
                            Button(action: {
                                Image(systemName: "multiply.circle.fill")
                                    .foregroundColor(.gray)
                                    .padding(.trailing, 8)
                            }, label: {
                                Text("")
                            })
                        }
                    }
                
                )
                .onTapGesture {
                    isEditing = true
                }
                if isEditing {
                    Button(action: {
                        self.isEditing = false
                        self.searchText = ""
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }, label: {
                       Text("Cancel")
                    })
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                }
            }
            
            List {
                
                ForEach(self.songs.filter {
                    self.searchText.isEmpty ? true : $0.lowercased().contains(self.searchText.lowercased())
                }, id: \.self) { songTitle in
                    
                    HStack {
                        Image(systemName: "rectangle.stack.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(5.0)
                            .shadow(radius: 2)
                        
                        VStack(alignment: .leading) {
                            Text(songTitle)
                                .font(.headline)
                            Text("Artist Name")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                        }
                        Spacer()
                        
                        Button(action: {
                            print("playing \(songTitle)")
                        }) {
                            Image(systemName: "play.fill")
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
            .accentColor(.blue)
            .navigationBarTitle(Text("Songs"))
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
