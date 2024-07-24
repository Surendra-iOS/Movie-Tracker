//
//  Movie.swift
//  Movie Tracker
//
//  Created by surendra on 23/07/24.
//

import Foundation

struct Movie: Identifiable{
    
     var id = UUID()
     var title = ""
     var rating = 3.0
     var seen = false
    
}

class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
