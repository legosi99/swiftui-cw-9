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
            List{
                NavigationLink(
                    destination: MovieDetailView(moviesName: "Lion King", moviesCOStar: ["Simba","Mufasa","Nala"], moviesLogo: "lionKing"),
                    label: {
                        moviesList(moviesName: "Lion King", moviesCOStar:  ["Simba","Mufasa","Nala"], moviesLogo: "lionKing")
                    })
                NavigationLink(
                    destination: MovieDetailView(moviesName: "Toy Story 4", moviesCOStar: ["Woody","Buzz","Rex"], moviesLogo: "toyStory"),
                    label: {
                        moviesList(moviesName: "Toy Story 4", moviesCOStar: ["Woody","Buzz","Rex"], moviesLogo: "toyStory")
                    })
                NavigationLink(
                    destination: MovieDetailView(moviesName: "Mulan", moviesCOStar: ["Hue li","Hue zhou","Ling"], moviesLogo: "mulan"),
                    label: {
                        moviesList(moviesName: "Mulan", moviesCOStar: ["Hue li","Hue zhou","Ling"], moviesLogo: "mulan")
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
    let moviesName: String
    let moviesCOStar: [String]
    let moviesLogo: String
    
    var body: some View {
        HStack{
            Image("\(moviesLogo)")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(moviesName)
                    .font(.largeTitle)
                Text(moviesCOStar.joined(separator: ", "))
            }.font(.custom("Merriweather-BoldItalic", size: 18))
        }.padding(.vertical)
    }
}
