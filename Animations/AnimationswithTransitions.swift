//
//  AnimationswithTransitions.swift
//  Animations
//
//  Created by Maraj Hossain on 9/13/23.
//

import SwiftUI

struct AnimationswithTransitions: View {
    @State private var isShowingRed = false

    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct AnimationswithTransitions_Previews: PreviewProvider {
    static var previews: some View {
        AnimationswithTransitions()
    }
}
