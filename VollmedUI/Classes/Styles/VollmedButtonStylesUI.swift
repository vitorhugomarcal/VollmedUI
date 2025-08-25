//
//  VollmedButtonStylesUI.swift
//  Pods
//
//  Created by Vitor Hugo Marçal on 25/08/25.
//

import SwiftUI

struct VollmedButtonStylesUI: View {
    var body: some View {
        VStack {
            Text("Button Styles")
            
            Button {
                
            } label: {
                Text("Confirm")
            }.buttonStyle(ConfirmPrimaryButtonStyle())
            
            Button {
                
            } label: {
                Text("Cancel")
            }.buttonStyle(CancelPrimaryButtonStyle())
        }
    }
}

public struct ConfirmPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 0/255,
                              green: 33/255,
                              blue: 61/255,
                              opacity: 1))
            .cornerRadius(12)
            .padding(.top, 8)
    }
}

public struct CancelPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .background(Color(red: 127/255,
                          green: 41/255,
                          blue: 44/255,
                          opacity: 1))
            .cornerRadius(12)
            .padding(.top, 8)
    }
}

#Preview {
    VollmedButtonStylesUI()
}
