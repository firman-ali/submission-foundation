//
//  ContentView.swift
//  submission foundation
//
//  Created by Firman Ali on 06/04/23.
//

import SwiftUI

struct ContentView: View {
    var itemArray: [(String,String,String)]=[
        ("Bali", "IconBali", "165 Location"),
        ("Lombok", "IconLombok", "57 Location"),
        ("NTT", "IconBali", "48 Location")
    ]
    var body: some View {
        List{
            ForEach(itemArray, id:\.0){item in
                CityStruct(name: item.0, image: item.1, desc: item.2)
                
            }
            
        }.navigationTitle("Explore")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
