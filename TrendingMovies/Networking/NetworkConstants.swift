//
//  NetworkConstants.swift
//  TrendingMovies
//
//  Created by Maryna Bolotska on 01/02/24.
//

import Foundation

class NetworkConstants {

    public static var shared: NetworkConstants = NetworkConstants()

    public var apiKey: String {
        get {
            
            return "8584f8073b689b2bc0540fe12372311c"
        }
    }
    
    
 //   public var apiKey = "8584f8073b689b2bc0540fe12372311c"

    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
