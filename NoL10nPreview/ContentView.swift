//
//  ContentView.swift
//  NoL10nPreview
//
//  Created by Alexander von Below on 21.07.25.
//

import SwiftUI

struct ContentView: View {
    func formatted(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        return formatter.string(from: date)
    }

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(formatted(date: .now))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
