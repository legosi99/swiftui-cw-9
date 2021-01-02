//
//  MovieDetailView.swift
//  day5
//
//  Created by Yousif on 02/01/2021.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movies
    
    var body: some View {
        ZStack {
            Group{
                Color.black.opacity(0.3)
                    .background(
                        Image(movie.movieImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .blur(radius: 8))
            }.ignoresSafeArea()
            VStack{
                Image(movie.movieImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                
                Text(movie.Title)
                    .font(.system(size: 50))
                    .bold()
                Text(movie.COStar.joined(separator: ", "))
                    .font(.title)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(movie.charImage, id: \.self){(raw: String) in
                            Image(raw).resizable().scaledToFit().frame(width: 200)
                        }
                    }
                }
                Spacer()
            }.padding(.vertical)
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movies[0])
    }
}
