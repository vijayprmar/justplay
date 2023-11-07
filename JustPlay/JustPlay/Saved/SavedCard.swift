//
//  SavedCard.swift
//  JustPlay
//
//  Created by Vijay Parmar on 07/11/23.
//

import SwiftUI

struct SavedCard: View {
    var body: some View {
    
            HStack{
                Image("img_ca")
                    .resizable()
                    .padding()
                    .frame(width: 150)
                VStack(alignment: .leading,spacing: 8){
                    Text(StringConstants.kMsgCaptainAmerica2)
                        .font(FontScheme.kPoppinsRegular(size: 15))
                        .foregroundStyle(.white)
                    Text(StringConstants.kMsgActionAdventu)
                        .font(FontScheme.kPoppinsRegular(size: 13))
                        .foregroundStyle(.white.opacity(0.8))
                    
                    
                    Button(action: {}, label: {
                        Text(StringConstants.kLblWatchNow)
                            .frame(width: 120,height: 28)
                            .background( .appRed )
                            .clipShape(Capsule())
                            .foregroundStyle(.white)
                    })
    
                }
                .padding(.trailing,8)
                
            }
                     
       
        
        
    }
}

#Preview {
    SavedCard()
        .frame(height:150)
        .background(Color.appDarkBlue)
    
}
