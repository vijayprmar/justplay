//
//  ResetPasswordView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI
struct ResetPasswordView: View {
    
    @State private var password: String = ""
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            VStack(alignment:.leading,spacing: 16){
                    
                HStack {
                    Text(StringConstants.kLblResetPassword)
                            .font(FontScheme.kPoppinsMedium(size: 25))
                        .foregroundStyle(.white)
                    Spacer()
                }
                
                    
                HStack {
                    Text(StringConstants.kMsgPleaseEnterYo)
                            .font(FontScheme.kPoppinsMedium(size: 14))
                            .foregroundStyle(.white.opacity(0.7))
                    Spacer()
                }
                .padding(.bottom,36)
              
                
                FloatingLabelTextField($password,placeholder: StringConstants.kLblPassword)
                    .titleColor(.white)
                    .selectedLineColor(.white)
                    .selectedTextColor(.white)
                    .selectedTitleColor(.white)
                    .lineColor(.white)
                    .rightView({
                        Button(action: {
                            withAnimation {
                                self.isPasswordShow.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName:  self.isPasswordShow ? "eye" : "eye.slash")
                                .foregroundStyle(.white)
                        }
                    })
                    .padding(.bottom,36)
                FloatingLabelTextField($password,placeholder: StringConstants.kMsgConfirmNewPas)
                    .titleColor(.white)
                    .selectedLineColor(.white)
                    .selectedTextColor(.white)
                    .selectedTitleColor(.white)
                    .lineColor(.white)
                    .rightView({
                        Button(action: {
                            withAnimation {
                                self.isPasswordShow.toggle()
                            }
                            
                        }) {
                            
                            Image(systemName:  self.isPasswordShow ? "eye" : "eye.slash")
                                .foregroundStyle(.white)
                        }
                    })
                 
                    .padding(.bottom,36)
                
                Button(action: {}, label: {
                    Text(StringConstants.kLblResetPassword2)
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
    ResetPasswordView()
}
