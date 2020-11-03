//
//  GreenImage.swift
//  YT-Musi
//
//  Created by Srivalli Kanchibotla on 10/26/20.
//

import SwiftUI

struct GreenImage: View {
    var body: some View {
        Image("greenary")
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 4))
            .shadow(radius: 20)
        
    }
}

struct GreenImage_Previews: PreviewProvider {
    static var previews: some View {
        GreenImage()
    }
}
