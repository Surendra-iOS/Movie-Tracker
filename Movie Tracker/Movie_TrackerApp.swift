//
//  Movie_TrackerApp.swift
//  Movie Tracker
//
//  Created by surendra on 22/07/24.
//

import SwiftUI

@main
struct Movie_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            MovieDetail(newMovie: true)
        }
    }
}
