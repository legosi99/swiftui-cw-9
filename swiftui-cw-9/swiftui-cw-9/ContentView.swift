//
//  ContentView.swift
//  day5
//
//  Created by Yousif on 02/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(movies){ movie in
                NavigationLink(
                    destination: MovieDetailView(movie: movie),
                    label: {
                        moviesList(movie: movie)
                    })
            }
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct moviesList: View {
    let movie: Movies
    
    var body: some View {
        HStack{
            Image(movie.movieImage)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(movie.Title)
                    .font(.largeTitle)
                Text(movie.COStar.joined(separator: ", "))
            }.font(.custom("Merriweather-BoldItalic", size: 18))
        }.padding(.vertical)
    }
}
