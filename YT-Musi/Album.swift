//
//  Album.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 11/1/20.
//

import Foundation

struct Album {
    var id: Int
    var name: String
    var artistName: String
    var albumArtString: String
    var publishDate: String
    var description: String
}

let albumList: [Album] = [
    
    .init(id: 1, name: "Nandalala", artistName: "Chitra", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda"),
    .init(id: 1, name: "Arere", artistName: "Karthik", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda"),
    .init(id: 1, name: "Nandalala", artistName: "Chitra", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda"),
    .init(id: 1, name: "Nandalala", artistName: "Chitra", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda"),
    .init(id: 1, name: "Nandalala", artistName: "Chitra", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda"),
    .init(id: 1, name: "Nandalala", artistName: "Chitra", albumArtString: "mukunda-cover", publishDate: "2015", description: "Mukunda")

]
