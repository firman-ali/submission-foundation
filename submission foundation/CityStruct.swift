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
                
                .scaledToFit()
                .frame(width: 50, height: 50)
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
            Spacer()
           
        }
        .padding()
        
    }
}

struct CityStruct_Previews: PreviewProvider {
    static var previews: some View {
        CityStruct(name:"Bali", image: "Bali", desc: "165 Location")    
    }
}
