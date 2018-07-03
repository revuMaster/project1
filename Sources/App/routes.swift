import Routing
import Vapor
import Foundation
import Leaf

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get { req  -> Future<View> in
        let context = [String: String]()
        return try req.view().render("home",context)
    }
    
    router.get("mtapp") { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("mtapp",context)
    }
    
    router.get("appcat") { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("appcat",context)
    }
        
    router.get("prcapp") { req -> Future<View> in
        let context = [String: String]()
        return try req.view().render("prcapp",context)
    }
}


/*
 router.get("staff", String.parameter) { req -> Future<View> in
 let name = try req.parameters.next(String.self)
 
 //create some dummy data to work with
 
 let bios = ["": "Click to meet our wonderful staff!",
 "kirk": "My name is James Kirk and I love snakes.",
 "picard": "Beam me up Scottie!",
 "sisko": "Ako si sisko",
 "janeway": "I'll do it my way!",
 "archer": "Archer done with Avenger"
 ]
 
 //define the struct we'll pass to the template
 
 struct StaffView: Codable {
 var name: String?
 var bio: String?
 var allNames: [String]
 }
 
 let context: StaffView
 
 //attempt to find a staff member by this name and fill in our struct
 if let bio = bios[name] {
 context = StaffView(name: name, bio: bio, allNames: bios.keys.sorted())
 } else {
 context = StaffView(name: nil, bio: nil, allNames: bios.keys.sorted())
 }
 
 //render the template with whatever we have
 return try req.view().render("staff",context)
 }
 */
