//
//  PendaltyDetails.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 27/10/23.
//

import SwiftUI

struct PenaltyDetails: View {
	
	let categories: DetailPenalty

	
	var body: some View {
		
		NavigationView{
			
			List(categories.penalties, id: \.self) { penalty in
				Text(penalty)
			}
			.navigationTitle("Penalidades del \(categories.categories)")
			.navigationBarTitleDisplayMode(.inline)
			
		}
	}
}

#Preview {
	PenaltyDetails(categories: DetailPenalty(categories: "Test", penalties: [""]))
}
