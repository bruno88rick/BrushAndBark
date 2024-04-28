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
        Group {
            Text("CONTACT US")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Text("We're open six days a week, from 8am to 4pm, and althought reservationns are recommended you're always welcome to come on in with your pup!")
            
            List {
                "Adress: Theodora Teixeira de Resende, Araxá-MG, Brazil"
                "Phone: +55 34 99232-1172"
                "WhatsApp: +55 34 99232-1172"
                "E-mail: brunoricardo@brunoricardo.me"
            }
            .listStyle(.unordered(.square))
            //.listStyle(.ordered(.lowerRoman))
            //.listStyle(.custom("🐩"))
            
            Text("Find Us")
                .font(.title2)
            
            Include("map.html") //its an html file over includes folder that we copy from openstreetmap.com
            
        }
        .frame(maxWidth: "90%")
    }
}
