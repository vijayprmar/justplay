//
//  LoginView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            ScrollView{
                Spacer(minLength: 60)
                Text("Login")
                    .font(FontScheme.kPoppinsMedium(size: 25))
                    .foregroundStyle(.white)
                
            }
            
        }
    }
}

#Preview {
    LoginView()
}
