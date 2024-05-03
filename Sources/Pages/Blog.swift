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
        Group {
            Text("BLOG")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Text("Each months we weite a new blog post covering tips, techniques, and other advice for dogs owners.")
                .font(.lead)
            
            Section {
                //search for things on blog path, or you can do: context.content.all
                for content in context.content(ofType: "blog") {
                    //you can call separeted content of MD files by choosing and mounting you custom layout, like content.xxx, but you can use a new elemento to call everything:
                    ContentPreview(for: content)
                        .margin(.top, 20)
                }
            }
            .columns(2)
            
        }
        .frame(width: "90%")
    }
}
