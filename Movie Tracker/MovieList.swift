//
//  MovieList.swift
//  Movie Tracker
//plus.circle
//  Created by surendra on 23/07/24.
//

import SwiftUI

struct MovieList: View {
    
    @EnvironmentObject var movieStorage : MovieStorage
    var body: some View {
        NavigationView{
            List(movieStorage.movies){ currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie, newMovie: false)) {
                    
                    Text(currentMovie.title)
                    
                }
            }.navigationBarTitle("Movie Lists").navigationBarItems(trailing:
                    NavigationLink(destination: MovieDetail(movie: Movie(), newMovie: true)) {
                                Image(systemName: "plus.circle")
                            } )
            
//                       Button(action: {
//                    // Action when trailing button is tapped
//                }) {
//                    Image(systemName: "plus.circle").resizable().frame(width: 30, height: 30)
//                })
            
    

        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList().environmentObject(MovieStorage())
    }
}
