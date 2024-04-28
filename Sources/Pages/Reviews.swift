//
//  Reviews.swift
//  
//
//  Created by Bruno Oliveira on 27/04/24.
//

import Foundation
import Ignite

struct Reviews: StaticPage {
    var title = "Reviews"

    func body(context: PublishingContext) -> [BlockElement] {
        Group{
            Text("REVIEWS")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
        }
        .frame(maxWidth: "90%")
    }
}
