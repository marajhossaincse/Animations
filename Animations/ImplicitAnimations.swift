//
//  ImplicitAnimations.swift
//  Animations
//
//  Created by Maraj Hossain on 9/13/23.
//

import SwiftUI

struct ImplicitAnimations: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me!") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay {
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeOut(duration: 1)
                        ////                .delay(1)
                        ////                .repeatCount(3, autoreverses: true)
                        .repeatForever(autoreverses: false),
                    value: animationAmount)
                .onAppear {
                    animationAmount = 2
                }
        }
//        .scaleEffect(animationAmount)
//        .blur(radius: (animationAmount - 1) * 3)
//        .animation(
//            .easeOut(duration: 1)
        ////                .delay(1)
        ////                .repeatCount(3, autoreverses: true)
//                .repeatForever(autoreverses: true),
//            value: animationAmount)
    }
}

struct ImplicitAnimations_Previews: PreviewProvider {
    static var previews: some View {
        ImplicitAnimations()
    }
}
