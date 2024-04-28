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
                    //.style("padding-left: 10%") //you can insert custon inline css style
                    /*.onClick(actions: <#T##() -> [any Action]#>)
                    .onHover(actions: <#T##(Bool) -> [any Action]##(Bool) -> [any Action]##(_ isHovering: Bool) -> [any Action]#>)
                    .onDoubleClick(actions: <#T##() -> [any Action]#>)*/
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
                    .padding() // insert space inside an element, different from .margin() that insert space around an element, like you can see on the text About Us above.
            }
            .backgroundOpacity(0.4)
            
            Slide(background: "/images/washing.jpg")
        }
        .shadow(radius: 10)
        
        Group {
            Text("ABOUT US")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large) //is equivalent to swiftUI padding(), in ignite the padding is different. Paddinng here insert space inside an element, no around the element. See in the button E-mail Us the difference.

            /* Look for examples in ignitesamples.hackingwithswift.com*/
            Text(placeholderLength: 50)
                .font(.lead)
            
            Text("Dave and John")
                .font(.lead)
                .fontWeight(.bold)
        }
        .horizontalAlignment(.center)
        .frame(maxWidth: 500) //y can use html sizes constrainnts 50%, 5em, 5rem, 5vw ...
        .margin(.bottom, .extraLarge)
        
        Section {
            Card(imageName: "/images/rug.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)
            
            Card(imageName: "/images/wind.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)
            
            Card(imageName: "/images/car.jpg") {
                Text("Luna, Samoyed")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .contentPosition(.overlay)
            .imageOpacity(0.5)
        }.columns(3)
    }
}
