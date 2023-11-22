//
//  DownloadedView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 22/11/23.
//

import SwiftUI

struct DownloadedView: View {
    var body: some View {
        ZStack{
            Color.appDarkBlue
            .ignoresSafeArea()
            
                ScrollView(showsIndicators: false, content: {
                    ForEach(1...10,id:\.self){_ in
                        DownloadedCardView()
                            .frame(height: 150)
                            .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)).fill(.white.opacity(0.08)))
                            .padding(.bottom,8)
                          
                    }
                })
                .padding(.leading,10)
                .padding(.trailing,10)
                .padding(.top,10)
                
            
        }
    }
}

#Preview {
    DownloadedView()
}
