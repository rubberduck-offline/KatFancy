//
//  License.swift
//  KatFancy
//
//  Created by Aileen Fong on 3/6/25.
//

import Foundation

// enum is a great way to represent finite set of possible values
enum License: String, Decodable {
    // all possible values for the license are represented by the enum
    // initilizing a indeterminate values by means of init method wouldn't make sense,
    // using a enum for license has the addtional benifit of precluding implementation of an init method
    // this method is also decodable for easy conversion from JSON
    case cc1
    case cc2
    case cc3
    case cc4
    case ccnd2
    case pinterest
    case publicDomain = "public_domain"
    
    var url: URL {
        let urlString: String
        switch self {
        case .cc1:
            urlString = "https://creativecommons.org/licenses/by-sa/1.0/"
        case .cc2:
            urlString = "https://creativecommons.org/licenses/by-sa/2.0/"
        case .cc3:
            urlString = "https://creativecommons.org/licenses/by-sa/3.0/"
        case .cc4:
            urlString = "https://creativecommons.org/licenses/by-sa/4.0/"
        case .ccnd2:
            urlString = "https://creativecommons.org/licenses/by-nd/2.0/"
        case .pinterest:
            urlString = "https://policy.pinterest.com/en/terms-of-service"
        case .publicDomain:
            urlString = "https://creativecommons.org/share-your-work/public-domain/"
        }
        
        guard let url = URL(string: urlString) else {
            fatalError(URL.couldNotInit(urlString: urlString))
            // could use a literal string here when this intialization fails,
            // but repeated literal strings are bad because typos happen
            // use an extension instead in Helpers
        }
        
        return url
    }
}


