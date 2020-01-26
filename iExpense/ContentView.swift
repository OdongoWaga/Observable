//
//  ContentView.swift
//  iExpense
//
//  Created by JFJ on 26/01/2020.
//  Copyright © 2020 JFJ. All rights reserved.
//

import SwiftUI
// make sure it conforms to protocol.
class User: ObservableObject {
    
    //tells swift that whenever any of these change send an announcement on reload.
    @Published var firstName = "Waga"
    @Published var lastName = "Odongo"
}


//make seens
struct ContentView: View {
    @ObservedObject private var user = User()
    
    var body: some View {
        VStack {
            
            Text("Your name is \(user.firstName) \(user.lastName).")
            
            TextField("First Name ", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
