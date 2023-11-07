//
//  CapsuleButton.swift
//  JustPlay
//
//  Created by Vijay Parmar on 07/11/23.
//

import SwiftUI

struct CapsuleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.appRed)
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}
