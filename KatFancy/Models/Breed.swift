//
//  Breed.swift
//  KatFancy
//
//  Created by Aileen Fong on 3/6/25.
//
import Foundation

struct Breed: Decodable {
    let name: String
    let knownFor: String
    let popularity: Int
    let photoUrl: URL
    let infoUrl: URL
    let credit: String
    let license: License
    let description: String
}
