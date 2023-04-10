//
//  ResultItemView.swift
//  submission foundation
//
//  Created by caren lorenza on 10/04/23.
//

import SwiftUI

struct ResultItemView: View {
    var watersport: Watersportmodel
    
    var body: some View {
        NavigationLink(destination: DetailedInformation()){
            
            VStack(alignment: .leading){
                Image(watersport.image)
                    .resizable()
                    .frame(width: .infinity, height: 250)
                    .padding(.bottom)
                VStack(alignment: .leading){
                    Text(watersport.name).bold()
                        .font(.system(size:25))
                        .padding(.vertical, 2)
                    Text(watersport.description)
                        .lineLimit(2)
                    
                    Divider()
                    HStack{
                        
                        Image(watersport.ownerimage)
                        VStack(alignment: .leading){
                            Text("Watersport by")
                                .foregroundColor(.gray)
                            Text(watersport.owner)
                                .lineLimit(1)
                        }
                        Spacer()
                        HStack{
                            Text("Read More")
                                .foregroundColor(.gray)
                                .font(.system(size:15))
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical,10)
                    .padding(.bottom)
                }
                .padding(.horizontal, 25)
                
            }
            .background(.white)
            .cornerRadius(10)
        }
        .buttonStyle(.plain)
    }
}

struct ResultItemView_Previews: PreviewProvider {
    static var previews: some View {
        ResultItemView(watersport: watersportList[0])
    }
}
