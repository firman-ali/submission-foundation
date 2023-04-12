//
//  MapAnnotationView.swift
//  submission foundation
//
//  Created by Sahrul Yudha Fahrezi on 12/04/23.
//

import SwiftUI
import MapKit

struct MapAnnotationView: View {
    @State private var showTitle = true
    let title: String
    
    var body: some View {
        VStack(spacing: 0){
            Text(title)
                .foregroundColor(.black)
                .font(.callout)
                .padding(5)
                .background(.white)
                .cornerRadius(10)
                .opacity(showTitle ? 1 : 0)
            
            Image(systemName: "mappin.circle.fill")
                .font(.title)
                .foregroundColor(.red)
            
            Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(.red)
                .offset(x: 0, y: -5)
        }
    }
}
