//
//  Articles.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 25/10/23.
//

import SwiftUI

struct Chapters: View {
	
	let chaptersArray: [ChapterModel] = [
		
		ChapterModel(chapters: "Capitulo 1", articles: ["Articulo 1", "Articulo 2", "Articulo 3"]),
		
		ChapterModel(chapters: "Capitulo 2", articles: ["Articulo 4", "Articulo 5", "Articulo 6","Articulo 7", "Articulo 8", "Articulo 9","Articulo 10", "Articulo 11", "Articulo 12", "Articulo 13"]),
		
		ChapterModel(chapters: "Capitulo 3", articles: ["Articulo 14", "Articulo 15", "Articulo 16", "Articulo 17"]),
		
		ChapterModel(chapters: "Capitulo 4", articles: ["Articulo 18", "Articulo 19", "Articulo 20","Articulo 21", "Articulo 22", "Articulo 23","Articulo 24", "Articulo 25", "Articulo 26", "Articulo 27","Articulo 28", "Articulo 29", "Articulo 30", "Articulo 31", "Articulo 32"]),
		
		ChapterModel(chapters: "Capitulo 5", articles: ["Articulo 33", "Articulo 34", "Articulo 35"]),
		
		ChapterModel(chapters: "Capitulo 6", articles: ["Articulo 36", "Articulo 37", "Articulo 38","Articulo 39", "Articulo 40", "Articulo 41","Articulo 42", "Articulo 43", "Articulo 44"]),
		
		ChapterModel(chapters: "Capitulo 7", articles: ["Articulo 45", "Articulo 46", "Articulo 47","Articulo 48", "Articulo 49", "Articulo 50","Articulo 51", "Articulo 52", "Articulo 53","Articulo 54", "Articulo 55", "Articulo 56", "Articulo 57","Articulo 58"]),
		
		ChapterModel(chapters: "Capitulo 8", articles: ["Articulo 59", "Articulo 60", "Articulo 61","Articulo 62"]),
		
		ChapterModel(chapters: "Capitulo 9", articles: ["Articulo 63", "Articulo 64", "Articulo 65","Articulo 66", "Articulo 67", "Articulo 68","Articulo 69", "Articulo 70", "Articulo 71","Articulo 72", "Articulo 73", "Articulo 74", "Articulo 75","Articulo 76","Articulo 77", "Articulo 78", "Articulo 79","Articulo 80", "Articulo 81"]),
		
		ChapterModel(chapters: "Capitulo 10", articles: ["Articulo 82", "Articulo 83", "Articulo 84","Articulo 85", "Articulo 86", "Articulo 87","Articulo 88", "Articulo 89", "Articulo 90","Articulo 91", "Articulo 92", "Articulo 93", "Articulo 94","Articulo 95","Articulo 96", "Articulo 97", "Articulo 98","Articulo 99", "Articulo 100","Articulo 101", "Articulo 102", "Articulo 103","Articulo 104", "Articulo 105", "Articulo 106","Articulo 107", "Articulo 108", "Articulo 109","Articulo 110", "Articulo 111", "Articulo 112", "Articulo 113","Articulo 114","Articulo 115", "Articulo 116"]),
		
		ChapterModel(chapters: "Capitulo 11", articles: ["Articulo 118", "Articulo 119", "Articulo 120", "Articulo 121", "Articulo 122"]),
		
		ChapterModel(chapters: "Capitulo 12", articles: ["Articulo 123", "Articulo 124", "Articulo 125","Articulo 126", "Articulo 127", "Articulo 128", "Articulo 129", "Articulo 130","Articulo 131", "Articulo 132", "Articulo 133", "Articulo 134"]),
		
		ChapterModel(chapters: "Capitulo 13", articles: ["Articulo 136", "Articulo 137", "Articulo 138","Articulo 139"]),
		
		ChapterModel(chapters: "Capitulo 14", articles: ["Articulo 140", "Articulo 141", "Articulo 142", "Articulo 143", "Articulo 144", "Articulo 145", "Articulo 146", "Articulo 147", "Articulo 148","Articulo 149", "Articulo 150", "Articulo 151",]),
		
		ChapterModel(chapters: "Capitulo 15", articles: ["Articulo 153", "Articulo 154"]),
		
		ChapterModel(chapters: "Capitulo 16", articles: ["Articulo 155", "Articulo 156", "Articulo 157","Articulo 158", "Articulo 159", "Articulo 160","Articulo 161", "Articulo 162", "Articulo 163","Articulo 164", "Articulo 165", "Articulo 166", "Articulo 167", "Articulo 168", "Articulo 169"])
		
	]
	
	let textHeaderChapters = "Aqui puedes leer los articulos de la ley 431 actualizada en La Gaceta en Enero de 2023."
	
	
	var body: some View {
		
		NavigationView {
			
			VStack {
				
				CardViewHeader(textHeader: textHeaderChapters)
					.padding(EdgeInsets())
				
				
				Section (header: Text("Selecciona uno para ver los articulos").textCase(.none)
					.font(.system(size: 20, weight: .medium, design: .rounded))
					.foregroundStyle(.blue)){
						
						List(chaptersArray, id: \.chapters) { chapter in
							
							NavigationLink(destination: ArticlesDetails(chapter: chapter)) {
								Text(chapter.chapters)
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
	Chapters()
}

