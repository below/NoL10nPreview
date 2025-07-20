//
//  ContentView.swift
//  NoL10nPreview
//
//  Created by Alexander von Below on 21.07.25.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.locale) var locale: Locale

    func formatted(date: Date, locale: Locale? = nil) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        formatter.timeStyle = .none
        if let locale {
            formatter.locale = locale
        }
        return formatter.string(from: date)
    }

    var body: some View {
        VStack {
            Text("Hello")
            Text(formatted(date: .now))
            Text(formatted(date: .now, locale: locale))
        }
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.blue, lineWidth: 0.5)
        )
        .padding(5)
    }
}

#Preview {
    ContentView()
        .environment(\.locale, .init(identifier: "de"))
    ContentView()
        .environment(\.locale, .init(identifier: "en"))
    ContentView()
        .environment(\.locale, .init(identifier: "fr"))
    ContentView()
        .environment(\.locale, .init(identifier: "ar"))

}

#Preview {
    ContentView()
        .environment(\.locale, .init(identifier: "fr"))
}
