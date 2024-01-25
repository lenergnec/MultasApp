//
//  ReincidenciaDetails.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 15/11/23.
//

import SwiftUI

struct ReincidenciaDetails: View {
	
	let textTitle1 = "Para los efectos de la presente Ley, se considera reincidencia cuando el conductor sea multado durante el periodo de un año con:\n"
	
	let textContenu1 = "1) Tres infracciones de mayor peligrosidad. \n\n2) Seis infracciones peligrosas.\n\n3) Una combinación de los dos tipos de infracciones, hasta en un número no menor de cuatro."
	
	let textTitle2 = "Cuando se determine la reincidencia según registro policial, la Autoridad Policial aplicará la suspensión de la licencia de la forma siguiente:"
	
	let textContenu2 = "1) Primera reincidencia tres meses.\n\n2) Segunda reincidencia seis meses. \n\n3) Tercera reincidencia un ario. \n\n4) Cuarta reincidencia: cancelación definitiva. \n\nEn los primeros tres casos el conductor sancionado con suspensión está obligado a recibir un curso de adiestramiento y manejo vial. \n\nEn los casos de las infracciones establecidas en los numerales 1), 2), 3), 4), 5) y 6) del artículo 26, en la primera ocasión se aplicará una suspensión de tres meses hasta un año, sin perjuicio de lo dispuesto por la autoridad judicial."
	
	var body: some View {
		
		NavigationView{
			ZStack{
				VStack{
					Image("flag")
						.resizable()
						.foregroundColor(.red)
						.aspectRatio(contentMode: .fit)
						.frame(height: 200)
						.cornerRadius(15)
						.opacity(0.1)
				}
				
				VStack{
					
					ScrollView{
						
						Text(textTitle1)
							.font(.system(size: 18, weight: .regular, design: .rounded))
							.foregroundColor(.letra)
							.padding(.horizontal)
			
						
						Text(textContenu1)
							.font(.system(size: 18, weight: .regular, design: .rounded))
							.foregroundColor(.black)
							.padding(.horizontal, 15)
						
						Divider()
							.background(.blue)
							.frame(height: 40)

						Text(textTitle2)
							.font(.system(size: 18, weight: .regular, design: .rounded))
							.foregroundColor(.letra)
							.padding(10)
							.padding(.horizontal)
			
						Text(textContenu2)
							.font(.system(size: 18, weight: .regular, design: .rounded))
							.foregroundColor(.black)
							.padding(.horizontal, 15)
							
					}
				}

			}
			.navigationTitle("Reincidencia de Infracciones Articulo 24")
			.navigationBarTitleDisplayMode(.inline)
		}
	}
}

#Preview {
    ReincidenciaDetails()
}
