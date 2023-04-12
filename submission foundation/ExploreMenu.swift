//
//  ExploreMenu.swift
//  submission foundation
//
//  Created by Julius Immanuel Theo Krisna on 10/04/23.
//

import SwiftUI

struct ExploreMenu: View {
    
    
    
    var body: some View {
        NavigationView {
            NavigationStack{
                VStack(alignment: .leading){
                    Text("Explore your next destination")
                        .bold().font(.largeTitle)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                    HStack{
                        Image(systemName: "paperplane.fill").bold().foregroundColor(.blue)
                        Text("Where do you want to go?").bold().foregroundColor(.blue)
                        Spacer()
                    }.padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack{
                            NavigationLink(destination: DetailedInformation()){
                                LocationStruct(name:"Bali Indah & Watersport", image: "watersport", desc: "Badung Regency, Bali")
                            }
                            NavigationLink(destination: DetailedInformation()){
                                LocationStruct(name:"Tanjung Benoa", image: "TanjungBenoa", desc: "Badung Regency, Bali")
                            }
                        }
                    }
                    Spacer()
                    HStack{
                        Text("Your next location").bold().font(.title)
                        
                    }.padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack{
                            CityStruct(name: "Bali", image: "baliIcon", desc: "165 Location")
                            CityStruct(name: "Lombok", image: "lombokIcon", desc: "57 Location")
                            CityStruct(name: "NTT", image: "nttIcon", desc: "48 Location")
                            
                        }
                    }
                    Spacer()
                }
                
                
        }
        
        }
    }
}

struct ExploreMenu_Previews: PreviewProvider {
    static var previews: some View {
        ExploreMenu()
    }
}
