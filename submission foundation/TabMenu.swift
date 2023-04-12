//
//  TabView.swift
//  submission foundation
//
//  Created by Julius Immanuel Theo Krisna on 12/04/23.
//

import SwiftUI

struct TabMenu: View {
    var body: some View {
        TabView{
            ExploreMenu()
                .tabItem{
                    Label("Explore", systemImage:"map.fill")
                }
            SearchView()
                .tabItem{
                    Label("Search", systemImage:"magnifyingglass")
                }
        }
    }
}

struct TabMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabMenu()
    }
}
