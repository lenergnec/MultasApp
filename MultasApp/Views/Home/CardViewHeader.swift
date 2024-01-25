//
//  CardViewHeader.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 30/10/23.
//

import SwiftUI

struct CardViewHeader: View {
	
	let textHeader: String
	
	var body: some View {
		
		ZStack {
			RoundedRectangle(cornerRadius: 20)
				.fill(Color.whiteBlue)
				.shadow(radius: 20)
			
			VStack {
				Image("flag")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(height: 100)
					.cornerRadius(15)
				
				Text("Ley 431")
					.font(.system(size: 30, weight: .heavy, design: .rounded))
					.foregroundColor(.blue)
					.padding(.bottom, 8)
				
				Text(textHeader)
					.font(.system(size: 20, weight: .light, design: .rounded))
					.foregroundStyle(Color.gray)
					.padding(.horizontal, 10)
				
				
			}
			.padding(8)
		}
		.frame(width: 350, height: 280)
		
	}
}


#Preview {
    CardViewHeader(textHeader: "test")
}
