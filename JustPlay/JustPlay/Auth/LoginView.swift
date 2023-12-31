//
//  LoginView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI
import FloatingLabelTextFieldSwiftUI
struct LoginView: View {
    
    @State private var email:String = ""
    @State private var password: String = ""
    @State private var isPasswordShow: Bool = false
    
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            ScrollView{
                Spacer(minLength: 60)
                Text("Login")
                    .font(FontScheme.kPoppinsMedium(size: 25))
                    .foregroundStyle(.white)
                Spacer(minLength: 40)
                FloatingLabelTextField($email,placeholder: StringConstants.kLblEmailAddress)
                    .titleColor(.white)
                    .selectedLineColor(.white)
                    .selectedTextColor(.white)
                    .selectedTitleColor(.white)
                    .lineColor(.white)
                    .padding()
                
                
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
                    .padding()
                HStack{
                    Spacer()
                    Button(action: {}, label: {
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kPoppinsRegular(size: 16))
                            .foregroundStyle(.white)
                            
                    })
                    .padding(.trailing,16)
                }
                
                Button(action: {}, label: {
                    Text(StringConstants.kLblLogin)
                        .font(FontScheme.kPoppinsMedium(size: 16))
                        .foregroundStyle(.white)
                        
                })
                
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.appRed)
                .cornerRadius(25)
                .padding()
                
                LabelledDivider(label: "or")
                
                HStack(spacing: 16){
                    
                    Button(action: {}, label: {
                        HStack{
                            Image("img_google")
                            Text(StringConstants.kLblGoogle)
                                .font(FontScheme.kPoppinsRegular(size: 16))
                                .foregroundStyle(.white)
                        }
                    })
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.white.opacity(0.1))
                    .cornerRadius(25)
                    
                    
                    Button(action: {}, label: {
                        HStack{
                            Image("img_facebook")
                            Text(StringConstants.kLblFacebook)
                                .font(FontScheme.kPoppinsRegular(size: 16))
                                .foregroundStyle(.white)
                        }
                    })
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.white.opacity(0.1))
                    .cornerRadius(25)
                    
                }
                .padding()
                
                Spacer(minLength: 40)
                
                HStack{
                    Text(StringConstants.kMsgDoYouAlready2)
                        .font(FontScheme.kPoppinsRegular(size: 14))
                        .foregroundStyle(.white.opacity(0.7))
                    
                    Button(action: {}, label: {
                        Text(StringConstants.kLblSignUpNow)
                            .font(FontScheme.kPoppinsRegular(size: 16))
                            .foregroundStyle(.white)
                            .underline()
                            
                    })
                    
                }
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}
