//
//  URLExtension.swift
//  KatFancy
//
//  Created by Aileen Fong on 3/6/25.
//

import Foundation

extension URL {
  static func couldNotInit(urlString: String) -> String {
    "Could not initialize URL from \(urlString)."
  }
}

