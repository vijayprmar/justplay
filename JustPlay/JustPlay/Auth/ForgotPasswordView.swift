//
//  ForgotPasswordView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI
struct ForgotPasswordView: View {
    
    @State private var email:String = ""
    
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            VStack(alignment:.leading,spacing: 16){
                    
                HStack {
                    Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kPoppinsMedium(size: 25))
                        .foregroundStyle(.white)
                    Spacer()
                }
                
                    
                HStack {
                    Text(StringConstants.kMsgYouForgotYour)
                            .font(FontScheme.kPoppinsMedium(size: 14))
                            .foregroundStyle(.white.opacity(0.7))
                    Spacer()
                }
                .padding(.bottom,36)
                FloatingLabelTextField($email,placeholder: StringConstants.kLblEmailAddress)
                    .titleColor(.white)
                    .selectedLineColor(.white)
                    .selectedTextColor(.white)
                    .selectedTitleColor(.white)
                    .lineColor(.white)
                    .padding(.bottom,36)
                
                Button(action: {}, label: {
                    Text(StringConstants.kLblSubmit)
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
    ForgotPasswordView()
}
