//
//  SwiftUIView.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 15/11/23.
//

import SwiftUI

struct conduccionDetails: View {
	
	let textTitle1 = "Se establece como conducción temeraria las conductas siguientes:\n"
	
	let textContenu1 = "1) Realizar o participar en competencias de velocidad ilegales.\n\n 2) Conducir a una velocidad superior al treinta por ciento del límite de velocidad establecido en las vías urbanas y carreteras.\n\n3) Aventajar en pendientes, curvas o puentes de forma indolente.\n\n4) Realizar maniobras acrobáticas con el vehículo en la vía pública."
	
	let textTitle2 = "Cualquier otra conducta que constituya infracción a las normas de tránsito, calificada en la presente Ley y su reglamento, que sea ejecutada por los conductores con manifiesto \n\n- Desprecio por la vida \n\n- La integridad física de las personas \n\n- Sus bienes o con notoria y deliberada transgresión a las normas de tránsito."
	
	let textContenu2 = "Los conductores que incurran en las conductas antes relacionadas serán responsables de infracción de conducción temeraria y se les aplicará la multa correspondiente, sin perjuicio de la responsabilidad penal y civil que corresponda."
	
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
							
			
						Text(textContenu2)
							.font(.system(size: 18, weight: .regular, design: .rounded))
							.foregroundColor(.black)
							.padding(5)
							
							
					}
				}

			}
			.navigationTitle("Conduccion Temeraria Articulo 26")
			.navigationBarTitleDisplayMode(.inline)
		}
	}
}

#Preview {
    conduccionDetails()
}
