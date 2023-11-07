//
//  ResetPasswordCongratesView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI

struct ResetPasswordCongratesView: View {
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            VStack(alignment:.leading,spacing: 16){
                    
                HStack {
                    Text(StringConstants.kLblCongrats)
                            .font(FontScheme.kPoppinsMedium(size: 25))
                        .foregroundStyle(.white)
                    Spacer()
                }
                
                    
                HStack {
                    Text(StringConstants.kMsgCongratsYourP2)
                            .font(FontScheme.kPoppinsMedium(size: 14))
                            .foregroundStyle(.white.opacity(0.7))
                    Spacer()
                }
                .padding(.bottom,16)
                
                Button(action: {}, label: {
                    Text(StringConstants.kLblLogin)
                        .font(FontScheme.kPoppinsMedium(size: 16))
                        .foregroundStyle(.white)
                        
                })
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.appRed)
                .cornerRadius(25)
                }
            .frame(maxWidth: .infinity)
            .padding()
            
        }
    }
}

#Preview {
    ResetPasswordCongratesView()
}
