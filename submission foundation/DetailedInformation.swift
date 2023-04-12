//
//  DetailedInformation.swift
//  submission foundation
//
//  Created by Sahrul Yudha Fahrezi on 10/04/23.
//

import SwiftUI
import MapKit

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
                        Text("Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be. Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be. Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be. Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be. Sometimes it is very difficult to find fun yet affordable water sports activities in Bali. NBC exists to be")
                            .lineLimit(readMore == false ? 3 : nil)
                        Button(action: {
                            readMore.toggle()
                        }){
                            Text(readMore == false ? "Show more" : "Show less")
                        }
                        
                    }
                    VStack(alignment: .leading){
                        Text("Location").bold()
                            .font(.system(size: 20))
                        mapView()
                            .frame(height: 200)
                            .cornerRadius(10)
                        
                        
                    }
                    
                    HStack{
                        Text("Information").bold()
                            .font(.system(size: 20))
                        Spacer()
                    }
                    Spacer()
                    
                    VStack(alignment: .leading){
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
                            Text("""
                            - Wetsuit atau drysuit
                            - Masker diving
                            - Regulator Diving
                            - Buoyacy Compensation Device
                            - Weight belt
                            - Kaki katak
                            - Aqualung.
                            """)
                        }
                        
                    }
                    
                    VStack(alignment: .leading){
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
                            Text("""
                            - Scuba Diving
                            - Snorkling
                            - Surfing
                            - Banana Boat
                            - Water Jetpack
                            """)
                        }
                        
                    }
                    
                    VStack(alignment: .leading){
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
                            Text("""
                            - Pax: Rp.700.000
                            - Group: Rp. 1.000.000
                            """)
                        }
                        
                    }
                    
                    
                    //                    Button(action: {
                    //
                    //                    }, label: {
                    //                        Text("Send Me The Location")
                    //                            .frame(maxWidth: .infinity)
                    //                            .padding(5)
                    //                    }
                    //                        .padding()
                    //                        .buttonStyle(.borderedProminent)
                    //                        .shadow(radius: 3,
                    //                                x: 3,
                    //                                y: 3)
                    //                            .transition(.scale))
                    
                    Button(action: {
                        let lat = "-8.755852"
                        let long = "115.222052"
                        let url = URL(string: "maps://?saddr=&daddr=\(lat),\(long)")
                        if UIApplication.shared.canOpenURL(url!) {
                            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
                        }
                    }, label: {
                        Text("Send Me The Location")
                            .frame(maxWidth: .infinity)
                            .padding(5)
                    })
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .shadow(radius: 3, x: 3, y: 3)
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
