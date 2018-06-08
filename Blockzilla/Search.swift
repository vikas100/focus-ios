//
//  Search.swift
//  Blockzilla
//
//  Created by Sawyer Blatz on 6/8/18.
//  Copyright © 2018 Mozilla. All rights reserved.
//

import Foundation
import Intents

@available(iOS 12.0, *)
public class Search {
    
    private var query: String
    public var intent: SearchIntent  {
        let searchIntent = SearchIntent()
        searchIntent.query = query
        return SearchIntent()
    }
    
    public init () {
        query = ""
    }
    
    public init(query: String) {
        self.query = query
    }
    
    public convenience init?(from intent: SearchIntent) {
        guard let query = intent.query else { return nil }
        
        self.init(query: query)
    }
}

