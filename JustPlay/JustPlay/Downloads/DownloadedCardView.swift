//
//  DownloadedCardView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 22/11/23.
//

import SwiftUI

struct DownloadedCardView: View {
    var body: some View {
        HStack{
            Image("img_ca")
                .resizable()
                .padding()
                .frame(width: 150)
            VStack(alignment: .leading,spacing: 8){
                HStack(alignment: .top) {
                    Text(StringConstants.kMsgCaptainAmerica2)
                        .font(FontScheme.kPoppinsRegular(size: 15))
                    .foregroundStyle(.white)
                    Button(action: {}) {
                        Image("menu")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .tint(.white)
                    }
                    
                }
                Text(StringConstants.kMsgActionAdventu)
                    .font(FontScheme.kPoppinsRegular(size: 13))
                    .foregroundStyle(.white.opacity(0.8))
                
                HStack{
                    Text("2:05:32")
                        .font(FontScheme.kPoppinsRegular(size: 13))
                        .foregroundStyle(.white.opacity(0.8))
                    Color.gray.frame(width: 2 ,height: 12)
                    
                    Text("12 GB")
                        .font(FontScheme.kPoppinsRegular(size: 13))
                        .foregroundStyle(.white.opacity(0.8))
                }

            }
            .padding(.trailing,8)
            
        }
    }
}

#Preview {
    DownloadedCardView()
        .frame(height:150)
        .background(Color.appDarkBlue)
}
