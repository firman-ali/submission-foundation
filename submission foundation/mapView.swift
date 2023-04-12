//
//  mapView.swift
//  submission foundation
//
//  Created by Sahrul Yudha Fahrezi on 12/04/23.
//

import SwiftUI
import MapKit

struct Place: Identifiable{
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct mapView: View {
    
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude:-8.755852 , longitude: 115.222052),
            span: MKCoordinateSpan(latitudeDelta: 0.0009, longitudeDelta: 0.0009)
            )
    var waterSport = [Place(name: "Bali Indah Dive & Watersport", coordinate: CLLocationCoordinate2D(latitude:-8.755852 , longitude: 115.222052))
    
    ]
    
    
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: waterSport){
            place in
            MapAnnotation(coordinate: place.coordinate){
                MapAnnotationView(title: place.name)
            }
        }
        
    }
}

struct mapView_Previews: PreviewProvider {
    static var previews: some View {
        mapView()
    }
}
