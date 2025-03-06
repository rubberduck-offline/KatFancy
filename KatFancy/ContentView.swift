//
//  ContentView.swift
//  KatFancy
//
//  Created by Aileen Fong on 3/5/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
    }
    .padding()
    .task {
      do {
        let breeds = try await BreedsLoader.loadBreeds()
        print("BreedsLoader retrieved \(breeds.count) breed(s).")
      } catch {
        print("An error happened during breed loading.")
      }
    }
  }
}
