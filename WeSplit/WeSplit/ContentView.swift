//
//  ContentView.swift
//  WeSplit
//
//  This code is going to be gross with notes and code for learning purposes
//
//  Created by Nathan Renfro on 1/25/23.
//  Option command p is resume
//  Command r builds it in a simulated device

import SwiftUI
//cannot change values in a struct like contentView
//use property wrappers like @State
//@State allows us to work around the limitations of structs
struct ContentView: View {
    //recommened to use private access control
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
        }
    
        //Navigation veiw takes the top part of screen and seperates it
        //NavigationView {
            //form can only have 10 things inside
            //limit of 10 children in swiftUI
            //Form{
                //group multiple things to things inside the form to make it 2 things in the form
                // Group{
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                // }
                
                // Group{
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                //     Text("Hello, world!")
                // }
                //Section splits into distinct visual groups
                //Section{
                //    Text("Hello, world!")
                //}
                //Section{
                //    Text("Hello, world!")
                //    Text("Hello, world!")
                //}
            //}
            //anything you want within the navagation bar goes inside right after the form or whatever
            //.navigationTitle("SwiftUI")
            //Changes how the navigation bar is displayed
            //.navigationBarTitleDisplayMode(.inline)
        //}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
