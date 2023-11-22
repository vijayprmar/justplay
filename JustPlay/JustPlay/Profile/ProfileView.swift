//
//  ProfileView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 22/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color.appDarkBlue
            .ignoresSafeArea()
            VStack{
                ZStack{
                    Text(StringConstants.kLblSave)
                        .font(FontScheme.kPoppinsSemiBold(size: 20))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity,alignment:.center)
                    
                }
                ScrollView(showsIndicators: false, content: {
                    VStack(content: {
                        Image("img_avatar")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(50, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        Text(StringConstants.kLblAntonioRenders)
                            .font(FontScheme.kPoppinsSemiBold(size: 20))
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity,alignment:.center)
                            .padding(.bottom,1)
                        Text(StringConstants.kMsgRendersAntoni)
                            .font(FontScheme.kPoppinsSemiBold(size: 16))
                            .foregroundStyle(.gray)
                            .frame(maxWidth: .infinity,alignment:.center)
                       
                        HStack{
                            Image("img_user")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .background(.white.opacity(0.2))
                                .cornerRadius(15, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                
                                
                        }
                        
                    })
                })
                .padding(.leading,10)
                .padding(.trailing,10)
                
            }
            .background(.appDarkBlue)
        }
            
        
    }
}

#Preview {
    ProfileView()
}
