//
//  Help.swift
//  
//
//  Created by Bruno Oliveira on 27/04/24.
//

import Foundation
import Ignite

struct Help: StaticPage {
    var title = "Help"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world!")
            .font(.title1)
    }
}
