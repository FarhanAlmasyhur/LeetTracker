//
//  AccentButton.swift
//  LeetTracker
//
//  Created by Muhammad Farhan Almasyhur on 27/07/22.
//

import SwiftUI

struct AccentButton: View {
    
    let buttonAction: (() -> Void)
    
    
    var body: some View {
        Button(action: buttonAction, label: {
            Text("Continue")
                .bold()
                .foregroundColor(.white)
                .frame(minWidth: 0, maxWidth: .infinity)
        }).background(.orange)
            .cornerRadius(8)
            .buttonStyle(.bordered)
            .controlSize(.large)
            .padding()
    }
}

struct AccentButton_Previews: PreviewProvider {
    static var previews: some View {
        AccentButton{
            print("clicked")
        }
    }
}
