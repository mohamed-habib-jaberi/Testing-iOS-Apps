//
//  ContentView.swift
//  AppleCard
//
//  Created by mohamed habib on 4/27/20.
//  Copyright © 2020 mohamed habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @State private var ssn: String = ""
    @State private var dob: String = ""
    @State private var message: String = ""

    var body: some View {
        
        NavigationView{

            VStack{
                TextField("Enter name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "nameTextField")

                TextField("Enter ssn", text: $ssn)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "ssnTextField")

                TextField("Enter dob", text: $dob)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accessibility(identifier: "dobTextField")

                Button("Apply"){

                }.padding(10)
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .accessibility(identifier: "applyButton")

                Text(message)
                    .accessibility(identifier: "messageLabel")

                Spacer()

            }.padding()
            .navigationBarTitle("Apply for card")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
