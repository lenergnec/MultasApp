//
//  PenaltyCategory.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 27/10/23.
//

import SwiftUI

struct PenaltyCategory: View {
	
	let textHeaderPenalty = "Estas son las multas que pueden aplicarte, revisalas de acuerdo a su categoria"
	
	let penaltyArray: [DetailPenalty] = [
		
		DetailPenalty(categories: "De Mayor Peligrosidad", penalties: ["Conducir en estado de embriaguez extrema: concentración superior a 2 gramos de alcohol por litro de sangre. \n\nC$ 5,000.00", "Conducir en estado de embriaguez: concentración de más de 1 gramo hasta 2 gramos de alcohol por litro de sangre. \n\nC$ 4,000.00","Conducir bajo efectos de estupefacientes, psicotrópicos, estimulantes y sustancias controladas. \n\nC$ 4,000.00", "Conducir de forma temeraria. \n\nC$ 3,000.00","Provocar accidente y darse a la fuga. \n\nC$ 2,500.00","Conducir a velocidad mayor que la que se exprese en la señalización de tránsito o al estándar establecido. \n\nC$ 2,500.00", "Giros indebidos en U y Zigzag. \n\nC$ 1 ,000.00", "Invasión de carril. \n\nC$ 800.00", "Participar en competencias ilegales de automotores. \n\nC$ 1 ,000.00", "Conducir sin tener licencia de conducir. \n\nC$ 500.00", "No respetar la preferencia peatonal en las intersecciones o cruces de colegios. \n\nC$ 650.00", "Exceso de pasajeros o de carga. \n\nC$ 500.00", "Aventajar en pendientes, curvas o puentes. \n\nC$ 500.00", "Conducir con las luces apagadas después de la hora indicada, o durante el día cuando haya condiciones ambientales de lluvia, neblina o tolvanera. \n\nC$ 500.00", "Adelantar en línea continua amarilla. \n\nC$ 500.00", "Conducir contra la vía. \n\nC$ 500.00", "Obstrucción de la libre circulación vehicular. \n\nC$ 500.00", "El conductor de motocicleta y acompañante que circulen sin portar debidamente el casco. \n\nC$ 500.00","El conductor y acompañantes de un vehículo automotor, que no utilice el cinturón de seguridad. \n\nC$ 350.00", "Desatender señales de emergencia, lumínicas, sonoras de ambulancias, policía o bomberos. \n\nC$ 350.00","Conducir utilizando manualmente teléfonos móviles, o cualquier otro aparato de distracción en el manejo. \n\nC$ 250.00", "No reportar los cambios de las características del vehículo. \n\nC$ 500.00", "Conducir motocicletas con niños menores de 8 años. \n\nC$ 200.00"]),
		
		DetailPenalty(categories: "Infracciones Peligrosas", penalties: ["Conducir en estado de embriaguez ligera: Concentración superior a 0.5 gramos hasta 1 gramo de alcohol por litro de sangre. \n\nC$ 1 ,000.00", "Realizar señales equivocadas sobre sus maniobras al conducir. \n\nC$ 250.00", "Circular con los vehículos sobre bulevares, aceras o andenes. \n\nC$ 250.00", "Conducir sin seguro de responsabilidad civil por daños a terceros, según la categoría siguiente: \n\na) Motocicletas \n\nC$ 500.00 \n\nb) Vehículos automotores livianos \n\nC$ 1,500.00 \n\nc) Vehículos automotores pesados \n\nC$ 3,000.00", "No guardar la distancia entre uno y otro vehículo. \n\n$ 160.00"]),
		
		DetailPenalty(categories: "Violaciones a normas de admision al trafico", penalties: ["Conducir sin portar placas o licencia de circulación. \n\nC$ 320.00", "Conducir con licencia en categorías diferentes a la autorizada. \n\nC$ 320.00", "Circular con placas no visibles, en mal estado o no autorizadas. \n\nC$ 320.00", "Conducir con la licencia vencida. \n\nC$ 250 .00", "Conducir sin portar licencia. \n\nC$ 160.00", "Circular sin espejos retrovisor interno o lateral. \n\nC$ 160.00", "Circular sin la calcomanía del pago de impuesto de rodamiento. \n\nC$ 100.00"])
	]
	
    var body: some View {
		
		NavigationView {
			
			VStack {
				
				CardViewHeader(textHeader: textHeaderPenalty)
					.padding(EdgeInsets())
				
				
				Section (header: Text("Selecciona uno para ver los articulos").textCase(.none)
					.font(.system(size: 20, weight: .medium, design: .rounded))
					.foregroundStyle(.blue)){
						
						List(penaltyArray, id: \.categories) { categories in
							
							NavigationLink(destination: PenaltyDetails(categories: categories)) {
								
								Text(categories.categories)
									.font(.system(size: 19, weight: .medium, design: .rounded))
									.foregroundStyle(.letra)
							}
						}
					}
				
				
			}
			.navigationTitle("Capitulos y Articulos de la Ley 431")
			.navigationBarTitleDisplayMode(.inline)
			
		}
    }
}

#Preview {
    PenaltyCategory()
}



