//
//  MainPage.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 15/11/23.
//

import SwiftUI

struct MainPageCard1: View {
	
	let cardImage1 = "incidencia1"
	let cardName1 = "Reincidencia de Infracciones"
	let cardArticletName1 = "Articulo 24"
	
	let cardImage2 = "incidencia2"
	let cardName2 = "Conduccion Temeraria"
	let cardArticletName2 = "Articulo 26"
	
	let cardImage3 = "incidencia3"
	let cardName3 = "Codigo Penal"
	let cardArticletName3 = "Articulos: 141, 154, 159"
	
	let cardImage4 = "incidencia4"
	let cardName4 = "Alcohol en Sangre"
	let cardArticletName4 = "Articulo 26"
	
	var body: some View {
		
		NavigationView {

			ScrollView{
				VStack{
					NavigationLink(destination: ReincidenciaDetails()) {
						
						cardMainPage(cardImage: cardImage1, cardName: cardName1, cardArticletName: cardArticletName1)
						
					}
					.padding()
					
					NavigationLink(destination: conduccionDetails()) {
						cardMainPage(cardImage: cardImage2, cardName: cardName2, cardArticletName: cardArticletName2)
					}
					
					
					NavigationLink(destination: MainPageCard1()) {
						cardMainPage(cardImage: cardImage3, cardName: cardName3, cardArticletName: cardArticletName3)
					}
					.padding()
					
					
					NavigationLink(destination: MainPageCard1()) {
						cardMainPage(cardImage: cardImage4, cardName: cardName4, cardArticletName: cardArticletName4)
					}
				
					
					
				}
				
			
				
			}
				.navigationTitle("Articulos Importantes")
		}
	}
}

#Preview {
    MainPageCard1()
}

struct cardMainPage: View {
	
	let cardImage: String
	let cardName: String
	let cardArticletName: String
	
	var body: some View {
		
	
			ZStack {
				RoundedRectangle(cornerRadius: 20)
					.fill(Color.whiteBlue)
					.shadow(radius: 20)
				
				VStack {
					Image(cardImage)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(height: 200)
						.cornerRadius(20)
					
					Text(cardName)
						.font(.system(size: 20, weight: .heavy, design: .rounded))
						.foregroundColor(.blue)
						.padding(.bottom, 8)
					
					Text(cardArticletName)
						.font(.system(size: 20, weight: .light, design: .rounded))
						.foregroundStyle(Color.gray)
						.padding(.horizontal, 10)
					
					
				}
				.padding(8)
			}
			.frame(width: 350, height: 280)
	}
}
