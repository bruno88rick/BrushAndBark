//
//  Contact.swift
//  
//
//  Created by Bruno Oliveira on 27/04/24.
//

import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact Us"

    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world!")
            .font(.title1)
    }
}
