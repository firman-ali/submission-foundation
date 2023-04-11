//
//  DetailedInformation.swift
//  submission foundation
//
//  Created by Sahrul Yudha Fahrezi on 10/04/23.
//

import SwiftUI

struct DetailedInformation: View {
    
    @State private var readMore = false
    @State private var showItPricing = false
    @State private var showItAvailable = false
    @State private var showItFacilities = false
    
    var body: some View {
        NavigationStack{
            ScrollView (.vertical){
                Image("watersport")
                    .resizable()
                    .frame(width: .infinity, height: 250)
                    .background(.blue)
//                VStack{
                    
                Group {
                    HStack{
                        Text("Bali Indah Dive & Watersport").bold()
                            .font(.system(size: 28))
                        Spacer()
                        
                    }
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                        Text("4.88")
                        Text("(3,598 Reviews)")
                        Spacer()
                    }
//                }
                
                    VStack(alignment: .leading){
                        HStack{
                            Image("Userpic").padding(.vertical)
                            VStack(alignment: .leading){
                                Text("Bali Indah Dive & Watersport").bold()
                                Text("Host & Owner")

                            }
                    
                        
                        }
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id maximus augue. Cras quis est mi. Sed eu massa sit amet ipsum egestas bibendum sit amet a nisl. Nulla ultricies erat non nulla bibendum ullamcorper. Donec ut tellus at urna varius interdum. Donec eget sollicitudin ex. Nullam vel nisl dapibus, rhoncus nunc non, malesuada ipsum. Vestibulum laoreet, metus commodo mollis mollis, turpis mauris consectetur ante, quis auctor tellus ipsum non leo. Quisque felis nulla, molestie porta placerat eget, feugiat vitae ipsum. Suspendisse id pharetra ipsum. Morbi eget leo purus. Aliquam pulvinar id augue id interdum. Donec rutrum facilisis leo, at luctus sapien egestas sed. Nunc ut nulla nunc. Sed malesuada diam tincidunt risus imperdiet, ut dignissim nunc pharetra.")
                        .lineLimit(readMore == false ? 3 : nil)
                    Button(action: {
                        readMore.toggle()
                    }){
                        Text(readMore == false ? "Show more" : "Show less")
                    }
                    
                    }
                    VStack(alignment:.leading ){
                    Text("Location").bold()
                        .font(.system(size: 20))
                    //...
                        
                        
                    }
                    
                    HStack{
                        Text("Information").bold()
                            .font(.system(size: 20))
                    Spacer()
                    }
                    Spacer()
                    
                    VStack{
                        Button(action: {
                            showItFacilities.toggle()
                        }, label: {
                            HStack{
                                Text("Facilities")
                                Spacer()
                                Image(systemName: showItFacilities == false ? "chevron.right" : "chevron.up")
                                    .padding()
                            }
                        })
                        if showItFacilities{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id maximus augue. Cras quis est mi. Sed eu massa sit amet ipsum egestas bibendum sit amet a nisl. Nulla ultricies erat non nulla bibendum ullamcorper.")
                        }
                            
                    }
                        
                    VStack{
                        Button(action: {
                            showItAvailable.toggle()
                        }, label: {
                            HStack{
                                Text("Available Watersport")
                                Spacer()
                                Image(systemName: showItAvailable == false ? "chevron.right" : "chevron.up")
                                    .padding()
                            }
                        })
                        if showItAvailable{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id maximus augue. Cras quis est mi. Sed eu massa sit amet ipsum egestas bibendum sit amet a nisl. Nulla ultricies erat non nulla bibendum ullamcorper.")
                        }
                            
                    }
                    
                    VStack{
                        Button(action: {
                            showItPricing.toggle()
                        }, label: {
                            HStack{
                                Text("Pricing")
                                Spacer()
                                Image(systemName: showItPricing == false ? "chevron.right" : "chevron.up")
                                    .padding()
                            }
                        })
                        if showItPricing{
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam id maximus augue. Cras quis est mi. Sed eu massa sit amet ipsum egestas bibendum sit amet a nisl. Nulla ultricies erat non nulla bibendum ullamcorper.")
                        }
                            
                    }
                    
                    
                    Button {
                    
                            } label: {
                                Text("Send Me The Location")
                                    .frame(maxWidth: .infinity)
                                    .padding(5)
                            }
                            .padding()
                            .buttonStyle(.borderedProminent)
                            .shadow(radius: 3,
                                    x: 3,
                                    y: 3)
                            .transition(.scale)
                }
                .padding(.horizontal)
                
                
                                
            }.navigationTitle("Information")
//                .navigationBarTitleDisplayMode(.inline)
                
        
        }
    }
}

struct DetailedInformation_Previews: PreviewProvider {
    static var previews: some View {
        DetailedInformation()
    }
}
