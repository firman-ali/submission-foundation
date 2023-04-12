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
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .cornerRadius(20)
                .frame(width: UIScreen.main.bounds.width * 3/4, height: 200)
                .background(.white)
            VStack(alignment: .leading){
                Text(name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Text(desc)
                    .font(.body)
                    .foregroundColor(.gray)
            }

        }
        .padding()
        

    }
    
//    var body: some View {
//        VStack(alignment: .leading) {
//            Image(image)
//            VStack(alignment: .leading){
//                Text(name)
//                    .font(.title3)
//                    .fontWeight(.bold)
//                Text(desc)
//                    .font(.body)
//                    .foregroundColor(.gray)
//            }
//        }
//        .frame(width: UIScreen.main.bounds.width * 3/4)
//        .border(.red)
//    }
}

struct LocationStruct_Previews: PreviewProvider {
    static var previews: some View {
        LocationStruct(name:"Bali Indah & Watersport", image: "watersport", desc: "Badung Regency, Bali")
    }
}
