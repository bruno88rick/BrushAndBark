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
        Group {
            Text("HELP")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Accordion{
                Item("What services do you offer at Brush & Bark?", startsOpen: true) {
                    Text(placeholderLength: 100)
                }
                
                Item("How do I book an appointment?") {
                    Text(placeholderLength: 100)
                }
                Item("What are your grooming prices?") {
                    Text(placeholderLength: 100)
                }
                
                Item("How long does a grooming sessionn take?") {
                    Text(placeholderLength: 100)
                }
                Item("What do I need for my dog's grooming appointment?") {
                    Text(placeholderLength: 100)
                    //we can put here every thing we want
                }
            }
            .openMode(.all) // try comment this line to see the differences
            
        }
        .frame(maxWidth: "90%")
    }
}
