//
//  ContentView.swift
//  CarTest
//
//  Created by Ihor Vovk on 20.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TaskView(title: "#234 Driver Front End Fender and 2 more", car: "2004 Ford Taurus", carNumber: "12SUP34", driver: "Bill Smith", tags: [("My Tag Text 1", .green), ("My Tag Text 2", .blue), ("My Tag Text 3", .purple), ("My Tag Text 4", .red), ("My Tag Text 5", .orange)])
            TodoItemView(title: "This is a todo item", isDone: false, tag: "RD", hasDetails: true)
            TodoItemView(title: "This is a todo item", isDone: true, tag: "RD", hasDetails: true)
            TodoItemView(title: "This is a todo item", isDone: false, status: "Inspection", hasDetails: false)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
