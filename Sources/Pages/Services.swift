//
//  Services.swift
//  
//
//  Created by Bruno Oliveira on 27/04/24.
//

import Foundation
import Ignite

struct Services: StaticPage {
    var title = "Services"

    func body(context: PublishingContext) -> [BlockElement] {
        Group{
            Text("SERVICES")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Table{
                Row {
                    "Bathing"
                    "$25"
                    "$30"
                    "$35"
                }
                Row {
                    "Full Hair Cut"
                    "$40"
                    "$50"
                    "$60"
                }
                Row {
                    "Ear Cleaning"
                    "$10"
                    "$10"
                    "$10"
                }
                Row {
                    "Teeth Brush"
                    "$12"
                    "$12"
                    "$12"
                }
                Row {
                    "Re-shedding Treatment"
                    "$30"
                    "$35"
                    "$40"
                }
                Row {
                    "Specialty Styling"
                    "$50"
                    "$60"
                    "$70"
                }
                
                Row {
                    "Complete Gromming"
                    "$80"
                    "$95"
                    "$110"
                }
            } header: {
                "Service"
                "Small Dogs"
                "Medium Dogs"
                "Large Dogs"
            }
            .tableStyle(.stripedRows)
        }
        .frame(maxWidth: "90%")
    }
}
