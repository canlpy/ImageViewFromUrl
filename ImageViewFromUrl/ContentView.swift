//
//  ContentView.swift
//  ImageViewFromUrl
//
//  Created by Can Alpay on 20.07.2023.
//

import SwiftUI
import URLImage

struct ContentView: View {
    let imageURLString = "https://media.cnn.com/api/v1/images/stellar/prod/230718165510-internal-revenue-service-headquarters-file.jpg?c=16x9&q=w_800,c_fill"
    
    var body: some View {
        VStack {
            URLImage(URL(string: imageURLString)!) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 200)
            }
            .padding()
            
           
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
