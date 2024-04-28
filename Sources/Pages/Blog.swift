//
//  Blog.swift
//  
//
//  Created by Bruno Oliveira on 27/04/24.
//

import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "Blog"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world!")
            .font(.title1)
    }
}
