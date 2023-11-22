//
//  DownloadsView.swift
//  JustPlay
//
//  Created by Vijay Parmar on 09/11/23.
//

import SwiftUI
import PagerTabStripView

struct DownloadsView: View {
    var body: some View {
        
        PagerTabStripView(){
            DownloadedView()
                .pagerTabItem(tag: 1) {
                    Text("Download")
                        .font(FontScheme.kPoppinsMedium(size: 18))
                        .foregroundStyle(.appRed)
                }
                
            
            DownloadedView()
                .pagerTabItem(tag: 2) {
                    Text("Downloading")
                        .font(FontScheme.kPoppinsMedium(size: 18))
                        .foregroundStyle(.appRed)
                }
        }
        .pagerTabStripViewStyle(.barButton(tabItemSpacing: 15, tabItemHeight: 50, indicatorView: {
            Rectangle().fill(.red).cornerRadius(5)
        }))
        .background(.appDarkBlue)
        
    }
}

#Preview {
    DownloadsView()
}
