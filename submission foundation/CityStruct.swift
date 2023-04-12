//
//  ExploreStruck.swift
//  submission foundation
//
//  Created by Julius Immanuel Theo Krisna on 10/04/23.
//

import SwiftUI

struct CityStruct: View {
    var name: String
    var image: String
    var desc: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(10)
            
            VStack{
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(desc)
                    .font(.body)
                    .foregroundColor(.gray)
            }
//
           
        }
        .padding()
    }
}

struct CityStruct_Previews: PreviewProvider {
    static var previews: some View {
        CityStruct(name:"Bali", image: "baliIcon", desc: "165 Location")
    }
}
