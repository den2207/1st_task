//
//  ContentView.swift
//  first_task
//
//  Created by Denys Okhremenko on 01.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            VStack {
                if #available(iOS 17.0, *) {
                    ScrollView() {
                        ForEach((1...100), id: \.self) {
                            Text("\($0)")
                                .font(.title)
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity)
                        }
                        
                    }
                    .scrollClipDisabled()
                } else {
                    // Fallback on earlier versions
                }
                
                Rectangle()
                    .fill(.red)
                    .frame(height: 50)
                    .opacity(0.9)
            }
            .tabItem {
                Label("First", systemImage: "star.fill")
                    .foregroundColor(.blue)
            }
            
        }
        .accentColor(.blue)
    }
}

#Preview {
    ContentView()
}
