//
//  ContentView.swift
//  Tourmaline
//
//  Created by Горячев Александр on 11.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            TabView{
                AddingView()
                    .tabItem {
                        Image(systemName: "plus.app.fill")
                        Text ("Add an aphorism")
                    }
                BrowseView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text ("Browse")
                    }
                CollectionView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text ("My collection")
                    }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
