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
                    Spacer()
                    Text("Explore your next destination")
                        .bold().font(.largeTitle)
                        .padding(.horizontal)
                    Spacer()
                    HStack{
                        Image(systemName: "paperplane.fill").bold().foregroundColor(.blue)
                        Text("Where do you want to go?").bold().foregroundColor(.blue)
                        Spacer()
                    }.padding(.horizontal)
                    
                    ScrollView(.horizontal) {
                        HStack{
                            LocationStruct(name:"Bali Indah & Watersport", image: "BaliIndah", desc: "Badung Regency, Bali")
                            LocationStruct(name:"Bali Indah & Watersport", image: "BaliIndah", desc: "Badung Regency, Bali")
                            LocationStruct(name:"Bali Indah & Watersport", image: "BaliIndah", desc: "Badung Regency, Bali")
                            LocationStruct(name:"Bali Indah & Watersport", image: "BaliIndah", desc: "Badung Regency, Bali")
                        }
                    }
                    HStack{
                        Text("Your next location").bold().font(.headline)
                        Spacer()
                        
                    }.padding(.horizontal)
                    ScrollView(.horizontal) {
                        HStack{
                            CityStruct(name: "Bali", image: "Bali", desc: "165 Location")
                            CityStruct(name: "Lombok", image: "Lombok", desc: "57 Location")
                            CityStruct(name: "NTT", image: "Bali", desc: "48 Location")
                            CityStruct(name: "NTB", image: "Lombok", desc: "21 Location")
                        }
                    }
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
