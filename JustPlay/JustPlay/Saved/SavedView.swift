//
//  SavedView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 07/11/23.
//

import SwiftUI

struct SavedView: View {
    var body: some View {
        ZStack{
            Color.appDarkBlue
            .ignoresSafeArea()
            VStack{
                HStack{
                    Spacer()
                    Text(StringConstants.kLblSaved)
                        .font(FontScheme.kPoppinsSemiBold(size: 20))
                        .foregroundStyle(.white)
                    Spacer()
                    Button(action: {}, label: {
                        Text(StringConstants.kLblDelete)
                            .font(FontScheme.kInterRegular(size: 16))
                            .foregroundStyle(.white)
                    })
                    .padding(.trailing,16)
                    
                    
                }
                ScrollView(showsIndicators: false, content: {
                    ForEach(1...10,id:\.self){_ in
                           SavedCard()
                            .frame(height: 150)
                            .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).fill(.white.opacity(0.08)))
                            .padding(.bottom,8)
                          
                    }
                })
                .padding(.leading,10)
                .padding(.trailing,10)
                
            }
            .background(.appDarkBlue)
        }
       
        
        
    }
}

#Preview {
    SavedView()
}
