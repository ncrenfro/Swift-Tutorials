//
//  ContentView.swift
//  WeSplit2
//
//  Created by Nathan Renfro on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    // 1 two way binding
    //@State private var name = ""
    // 2 Veiws in a loop
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        // 1 Two Way binding
        //Form {
            // $ tells swift that name should be read and store the value
            // $ two way binding
            //TextField("Enter your name", text: $name)
            //Text("Your name is \(name)")
        //}
        NavigationView{
            Form{
                Picker("Select your student", selection: $selectedStudent){
                    // \.self says hey the strings in the array themselves are unique
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
            }
        }
     
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
