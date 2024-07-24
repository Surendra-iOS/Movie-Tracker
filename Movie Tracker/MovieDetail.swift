//
//  MovieTracker.swift
//  Movie Tracker
//
//  Created by surendra on 22/07/24.
//

import SwiftUI

struct MovieTracker: View {
    
    @State var title = ""
    @State var rating = 3.0
    @State var seen = false
    
    var body: some View {
        List {
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text:$title)
            }
            Section {
                SectionTitle(title: "Rating")
                HStack {
                   Spacer()
                    Text(String(repeating: "★", count: Int(rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value: $rating, in: 1...5, step: 1)
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn: $seen) {
                    
                    if title == "" {
                       Text("I have seen this movie")
                    } else {
                        Text("I have seen \(title)")
                    }
                }
            }
            Section {
                Button(action:{}) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}


struct MovieTracker_Previews: PreviewProvider {
    static var previews: some View {
        MovieTracker()
    }
}

struct SectionTitle: View {
    
    var title : String
    
    var body: some View {
        Text(title).font(.caption).foregroundColor(.blue)
    }
}
