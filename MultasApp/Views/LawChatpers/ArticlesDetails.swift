//
//  ArticlesDetails.swift
//  MultasApp
//
//  Created by Lener Gonzalez on 26/10/23.
//

import SwiftUI

struct ArticlesDetails: View {
	
	let chapter: ChapterModel

	
	var body: some View {
		
		NavigationView{
			
			List(chapter.articles, id: \.self) { articles in
				Text(articles)
			}
			.navigationTitle("Artículos del \(chapter.chapters)")
			.navigationBarTitleDisplayMode(.inline)
			
		}
	}
}

#Preview {
	ArticlesDetails(chapter: ChapterModel(chapters: "test", articles: ["Test", "test"]))
}



