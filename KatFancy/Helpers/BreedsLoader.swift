//
//  BreedsLoader.swift
//  KatFancy
//
//  Created by Aileen Fong on 3/6/25.
//

import Foundation

enum BreedsLoader {
    // BreedsLoader is an enum because it has no state
    // unlike a class or struct, an enum can't have state
  static func loadBreeds() async throws -> [Breed] {
      // loadBreeds returns the desired array of breeds
      // async: the callers can treat getting an array of breeds
      // as if the func is synchronous without mucking around with a callback
      // throws: the func throws error from a network call or model decoding
      // which means the call have to deal with those errors in a do catch block
    let urlString = "https://assets.algoexpert.io/course-assets/iosexpert/breeds.json"
    guard let url = URL(string: urlString) else {
      fatalError(URL.couldNotInit(urlString: urlString))
    }

    let (data, _) = try await URLSession.shared.data(from: url)
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    let breeds = try decoder.decode(Breeds.self, from: data)
    return breeds.breeds
  }
}
