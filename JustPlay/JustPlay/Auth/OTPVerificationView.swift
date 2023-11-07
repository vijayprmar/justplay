//
//  OTPVerificationView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 06/11/23.
//

import SwiftUI
import AEOTPTextField
struct OTPVerificationView: View {
    
    @State private var otp:String = ""
    @State var timeRemaining = 10
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var isTimeRuning = false
    
    var body: some View {
        ZStack{
            Color.appDarkBlue
                .ignoresSafeArea()
            
            VStack(alignment:.center,spacing: 16){
                
                HStack {
                    Text(StringConstants.kLblResetPassword)
                        .font(FontScheme.kPoppinsMedium(size: 25))
                        .foregroundStyle(.white)
                    Spacer()
                }
                
                
                HStack {
                    Text(StringConstants.kMsg6DigitCodeHas3)
                        .font(FontScheme.kPoppinsMedium(size: 14))
                    
                    Text(verbatim:"vijay@gmail.com")
                        .font(FontScheme.kPoppinsBold(size: 14))
                    Spacer()
                }
                .foregroundStyle(.white.opacity(0.7))
                .padding(.bottom,36)
                
                
                AEOTPView(text: $otp, width: .infinity,height:60,otpFilledBackgroundColor:UIColor.white.withAlphaComponent(0.2))
                
                Button(action: {}, label: {
                    Text(StringConstants.kLblVerify)
                        .font(FontScheme.kPoppinsMedium(size: 16))
                        .foregroundStyle(.white)
                    
                })
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.appRed)
                .cornerRadius(25)
                .padding(.bottom,36)
                HStack(){
                    Spacer()
                    Text(StringConstants.kMsgDidnTReceive)
                        .font(FontScheme.kPoppinsRegular(size: 14))
                        .foregroundStyle(.white.opacity(0.7))
                    
                    Button(action: {
                        if !isTimeRuning{
                            self.isTimeRuning.toggle()
                        }
                        
                    }, label: {
                        Text(isTimeRuning ? "\(timeRemaining)" : "Resend")
                            .font(FontScheme.kPoppinsRegular(size: 16))
                            .foregroundStyle(.white)
                            .underline()
                            .onReceive(timer, perform: { _ in
                                if timeRemaining > 1 && self.isTimeRuning {
                                    timeRemaining -= 1
                                }else{
                                    timeRemaining = 10
                                    self.isTimeRuning = false
                                }
                            })
                        
                    })
                    
                    Spacer()
                    
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding()
            
            
        }
    }
}

#Preview {
    OTPVerificationView()
}
