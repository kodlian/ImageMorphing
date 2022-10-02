//
//  Box.swift
//  Demo
//
//  Created by Jeremy Marchand on 01/10/2022.
//

import SwiftUI

struct Box<Content: View>: View {
    let title: String
    let subtitle: String


    @ViewBuilder
    let content: () -> Content

    var headerText: Text {
        Text(title)
            .font(.title.weight(.semibold))
        + Text("\n")
        + Text(subtitle)
            .font(.subheadline)
    }

    var body: some View {
        VStack {
            headerText
                .fixedSize()
                .multilineTextAlignment(.center)
            Divider()
            content()
                .padding(.top)
                .shadow(color: .white,  radius: 4)
                .shadow(color: .purple.opacity(0.45),  radius: 30)
        }
        .padding(30)
        .background(background)
        .padding(.horizontal, 30)
        .padding(.vertical, 15)
    }

    var background: some View {
        RoundedRectangle(cornerRadius: 30, style: .continuous)
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.10),  radius: 30)
    }
}

struct Box_Previews: PreviewProvider {
    static var previews: some View {
        Box(title: "title", subtitle: "subtile") {
            Text("Box Content")
        }.padding(30)
    }
}
