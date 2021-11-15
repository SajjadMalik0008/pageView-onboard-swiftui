//
//  ContentView.swift
//  PageView
//
//  Created by devadmin on 15.11.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            if #available(iOS 15.0, *) {
                OnboardView(systemImageName: "scribble.variable", title: "Setch", description: "SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco")
                OnboardView(systemImageName: "highlighter", title: "highlighter", description: "the system font for Apple platforms. Symbols come in nine weights and three scales, and automatically align with text labels")
                OnboardView(systemImageName: "paperplane.fill", title: "paperplane", description: "They can be exported and edited in vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features.")
            } else {
                // Fallback on earlier versions
            }
            
        }.tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


@available(iOS 15.0, *)
struct OnboardView: View {
    let systemImageName: String
    let title: String
    let description: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.teal)
            Text(title)
                .font(.title).bold()
            Text(description)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }.padding(.horizontal,40)
    }
}
