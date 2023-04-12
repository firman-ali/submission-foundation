//
//  ExploreList.swift
//  submission foundation
//
//  Created by Julius Immanuel Theo Krisna on 10/04/23.
//

import SwiftUI

struct LocationStruct: View {
    var name: String
    var image: String
    var desc: String
    
    var body: some View {
        VStack {
            Image(image)
        
                .scaledToFit()
                .frame(width: 170, height: 120)
                .padding()
                .background(.white)
                .clipShape(Rectangle())
            
                
            
            VStack(alignment: .leading){
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(desc)
                    .font(.body)
                    .foregroundColor(.gray)
            }
           
        }
        .padding()
        
    }
}

struct LocationStruct_Previews: PreviewProvider {
    static var previews: some View {
        LocationStruct(name:"Bali Indah & Watersport", image: "BaliIndah", desc: "Badung Regency, Bali")
    }
}
