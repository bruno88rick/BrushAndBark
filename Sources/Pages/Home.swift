import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
        Carousel {
            Slide(background: "/images/shades.jpg") {
                Text("Welcome to Brush & Bark")
                    .font(.title1)
                Text("We are Oxford`s #1 dog grooming salon, and ready to leave you pawsitively happy!")
                    .font(.lead)
                Link("Make a Booking", target: Contact())
                    .linkStyle(.button)
                    .role(.danger)
            }
            .backgroundOpacity(0.4)
            
            Slide(background: "/images/chair.jpg") {
                Text("Fur-tastic Grooming for yout Best Friend")
                    .font(.title1)
                
                Text("We offer full gromming and styling, plus nauk treatments, doggy spasm and more.")
                    .font(.lead)
                
                Link("All Services", target: Services())
                    .linkStyle(.button)
                    .role(.secondary)
            }
            .backgroundOpacity(0.4)
            
            Slide(background: "/images/wind.jpg") {
                Text("You're barking up the right tree")
                    .font(.title1)
                
                Text("We're here to make every pup look pupperific - brush up on your cuteness Today!")
                    .font(.lead)
                
                Link("E-mail Us", target: "mailto:brunoricardo@brunoricardo.me")
                    .linkStyle(.button)
                    .role(.info)
            }
            .backgroundOpacity(0.4)
            
            Slide(background: "/images/washing.jpg")
            
        }
        .shadow(radius: 10)
    }
}
