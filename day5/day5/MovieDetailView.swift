//
//  MovieDetailView.swift
//  day5
//
//  Created by Yousif on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let moviesName: String
    let moviesCOStar: [String]
    let moviesLogo: String
    
    var body: some View {
        ZStack {
            Group{
                Image(moviesLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .blur(radius: 8)
                Color.black.opacity(0.3)
            }.ignoresSafeArea()
            VStack{
                Image(moviesLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(moviesName)
                    .font(.system(size: 50))
                    .bold()
                Text(moviesCOStar.joined(separator: ", "))
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }.padding(.vertical)
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(moviesName: "Lion King", moviesCOStar: ["Simba","Mufasa","Nala"], moviesLogo: "lionKing")
    }
}
