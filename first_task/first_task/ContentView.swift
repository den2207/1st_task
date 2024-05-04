//
//  ContentView.swift
//  first_task
//
//  Created by Denys Okhremenko on 01.05.2024.


import SwiftUI

struct ContentView: View {
    @State private var size: Double = 300

    var body: some View {
        VStack(alignment: .leading) {
            Text("Марафон\u{00A0}").foregroundStyle(.secondary) + Text("по SwiftUI")
            Text("«Отцовский Пинок»")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
        }
        .frame(width: size, height: 200)
        .border(.red)
        
        Slider(value: $size, in: 100...300)
    }
}

#Preview {
    ContentView()
}
