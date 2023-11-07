//
//  SplashView.swift
//  Adacana
//
//  Created by Vijay Parmar on 23/10/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                TabbarMainView()
            }else{
                Image("img_play")
                     .resizable()
                     .scaledToFit()
                     .frame(width: 500, height: 50)
                     .padding(20)
                     .background(.white)
                     .clipShape(Circle())
                     
                     
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("app_red", bundle: nil))
        .background(ignoresSafeAreaEdges: .all)
        
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                withAnimation {
                    self.isActive = true
                }
            }
        }
        
    }
    

}

#Preview {
    SplashView()
}
