//
//  ResultView.swift
//  submission foundation
//
//  Created by caren lorenza on 10/04/23.
//

import SwiftUI

struct ResultView: View {
    @State var searchText = ""
    
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(alignment: .bottom) {
                Button {
                    
                } label: {
                    Text("Top Match")
                }
                .cornerRadius(20)
                .buttonStyle(.borderedProminent)
                
                Button {
                    
                } label: {
                    Text("Nearby")
                        .foregroundColor(.blue)
                        .opacity(1)
                }
                .cornerRadius(20)
                .buttonStyle(.borderedProminent)
                .tint(Color("ButtonBackground"))
                
                
            }
            .padding(.horizontal)
            .padding(.trailing)
            List {
                ForEach(watersportList, id: \.id) { watersports in
                    ResultItemView(watersport: watersports)
                }
            }
            .listStyle(PlainListStyle())
            .background(.gray)
            
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
