//
//  ContentView.swift
//  Animations
//
//  Created by Maraj Hossain on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            NavigationLink("Implicit Animations", destination: ImplicitAnimations())
            NavigationLink("Explicit Animations", destination: ExplicitAnimations())
            NavigationLink("Binding Animations", destination: BindingAnimations())
            NavigationLink("Animation Stack ", destination: AnimationStack())
            NavigationLink("Animating Gesture", destination: AnimatingGestures())
            NavigationLink("Animating Gesture String Project", destination: AnimatingGesturesStringProject())
            NavigationLink("Animations w/ Transitions", destination: AnimationswithTransitions())
            NavigationLink("Transition using Viewmodifier", destination: TransitionusingViewModifier())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
