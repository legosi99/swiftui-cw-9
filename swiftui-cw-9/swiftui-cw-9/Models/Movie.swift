//
//  Movie.swift
//  day5
//
//  Created by Yousif on 02/01/2021.
//

import SwiftUI

struct Movies: Identifiable{
    let Title: String
    let COStar: [String]
    let movieImage: String
    
    let id = UUID()
}


let movies = [
    Movies(Title: "Lion King", COStar: ["Simba","Mufasa","Nala"], movieImage: "lionKing"),
    Movies(Title: "Mulan", COStar: ["Hue li","Hue zhou","Ling"], movieImage: "mulan"),
    Movies(Title: "Toy Story 4", COStar: ["Woody","Buzz","Rex"], movieImage: "toyStory")
]
