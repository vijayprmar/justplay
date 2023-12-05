//
//  ProfileCell.swift
//  JustPlay
//
//  Created by Vijay Parmar on 05/12/23.
//

import SwiftUI

struct ProfileCell: View {
    
    @State var title:String
    @State var isSelected:Bool
    @State var image:String
    
    var body: some View {
        HStack(spacing:16){
            Circle()
                .fill(.white.opacity(0.1))
                .frame(width: 45, height: 45)
                .overlay {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
                .padding(.leading,8)
            Text(title)
               
                .font(FontScheme.kPoppinsMedium(size: 16))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity,alignment:.leading)
            if isSelected{
                Image(systemName:"chevron.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.white)
                    .padding(.trailing,16)
            }
            
        }
        .frame(height: 65)
        .background(isSelected ? .white.opacity(0.05) : .clear)
        .cornerRadius(12)
        .padding(.leading,16)
        .padding(.trailing,16)
        
    }
}

#Preview {
    ProfileCell(title: "Profile", isSelected: true, image: "img_user")
        .background(.black)
}
