//
//  HomeVieew.swift
//  JustPlay
//
//  Created by Vijay Parmar on 07/11/23.
//

import SwiftUI

struct HomeView: View {
    
    var arrMovieCategories = ["All","Action","Comedy","Romance","Thriller","Romcom","Suspense","Horror"]
    
    var arrMovies = ["img_1","img_2","img_3","img_4","img_5","img_6","img_7","img_8"]
    
    @State var selectedCategory = "All"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                GeometryReader { geometry in
                    ImageCarouselView(numberOfImages: 3) {
                        Image("image_carousel_1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image("image_carousel_1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image("image_carousel_1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                }.frame(height: 300, alignment: .center)
                
                Text(StringConstants.kLblCatagories)
                    .foregroundStyle(.white)
                    .font(FontScheme.kPoppinsSemiBold(size: 18))
                    .padding()
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        ForEach(arrMovieCategories, id: \.self) { category in
                            Button(category, action: {
                                self.selectedCategory = category
                            })
                                .frame(width: 90,height: 28)
                                .background(selectedCategory == category ? .appRed : .white.opacity(0.15))
                                .clipShape(Capsule())
                                .foregroundStyle(.white)
                        }
                    }
                }
                
                HStack{
                    Text(StringConstants.kLblMostPopular)
                        .foregroundStyle(.white)
                        .font(FontScheme.kPoppinsSemiBold(size: 18))
                        .padding()
                    Spacer()
                    Text(StringConstants.kLblSeeAll)
                        .foregroundStyle(.white)
                        .font(FontScheme.kPoppinsRegular(size: 15))
                        .padding()
                }
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(arrMovies, id: \.self) { movie in
                           Image(movie)
                                .resizable()
                                .frame(width: 150,height: 200)
                                .background(.appRed)
                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.leading,16)
                
                HStack{
                    Text(StringConstants.kLblLatestMovies)
                        .foregroundStyle(.white)
                        .font(FontScheme.kPoppinsSemiBold(size: 18))
                        .padding()
                    Spacer()
                    Text(StringConstants.kLblSeeAll)
                        .foregroundStyle(.white)
                        .font(FontScheme.kPoppinsRegular(size: 15))
                        .padding()
                }
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(arrMovies, id: \.self) { movie in
                           Image(movie)
                                .resizable()
                                .frame(width: 150,height: 200)
                                .background(.appRed)
                                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                .foregroundStyle(.white)
                        }
                    }
                }
                .padding(.leading,16)
                .padding(.bottom,32)
                
            }
            
        }
        .background(.appDarkBlue)
        .ignoresSafeArea(edges:[.top])
    }
}

#Preview {
    HomeView()
}
