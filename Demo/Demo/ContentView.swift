//
//  ContentView.swift
//  Demo
//
//  Created by Jeremy Marchand on 01/10/2022.
//

import SwiftUI
import ImageMorphing

struct ContentView: View {
    let names = [
        "circle.fill",
        "heart.fill",
        "star.fill",
        "bell.fill",
        "bookmark.fill",
        "tag.fill",
        "bolt.fill",
        "play.fill",
        "pause.fill",
        "squareshape.fill",
        "key.fill",
        "hexagon.fill",
        "gearshape.fill",
    ]

    @State
    var index = 0
    var nextIndex: Int {
       return (index + 1) % names.count
    }

    let gradient = Gradient(colors: [.purple, .red])

    var body: some View {
        ScrollView {
            Box(title: "It is morphing time!", subtitle: "Demo") {
                demo
            }
            Box(title: "How to use?", subtitle: "100% SwiftUI") {
                howTo
            }
        }
        .foregroundStyle(
            .linearGradient(gradient, startPoint: .top, endPoint: .bottom)
        )
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }

    @ViewBuilder
    var demo: some View {
        MorphingImage(systemName: names[index])
            .frame(width: 128, height: 128)
            .padding()
        Button {
            index = nextIndex
        } label: {
            Label {
                Text("Next")
                    .fontWeight(.semibold)
            } icon: {
                MorphingImage(systemName: names[nextIndex])
                    .frame(width: 16, height: 16)
            }
        }
        .foregroundColor(.white)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .accentColor(.purple)
        .multilineTextAlignment(.center)
    }

    @ViewBuilder
    var howTo: some View {
        Text("""
        **MorphingImage("MyImage")**
           .frame(width: 64, height: 64)

        **MorphingImage(systemName: "star.fill")**
           .frame(width: 64, height: 64)
        """).font(.caption)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
