import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello World"
    var baseTitle = " – My Awesome Site"
    var url = URL("https://www.example.com")
    var builtInIconsEnabled = true

    var author = "John Appleseed"

    var homePage = Home()
    var theme = MyTheme()
    
    //if you want to change the pageWidth of the site to control flexible layout. The standard of ignite works well, but you can change:
    
    // the standard uses 11 with the 12 in blank, but you can use 12 to expand the view to all the pages. Comment line above to see the difference
    var pageWidth = 12
    
    
    var pages: [any StaticPage] {
        Blog()
        Contact()
        Help()
        Reviews()
        Services()
    }
}


