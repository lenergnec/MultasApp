//
//  ContentView.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 25/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
		TabView {
			
			MainPageCard1()
				.tabItem {
					Image(systemName: "house.circle.fill")
					Text("Home")
				}
			
			Chapters()
				.tabItem {
					Image(systemName: "books.vertical.fill")
					Text("Articulos")
				}
			
			PenaltyCategory()
				.tabItem {
					Image(systemName: "book.circle.fill")
					Text("Multas")
				}
		}
    }
}

#Preview {
    ContentView()
}

