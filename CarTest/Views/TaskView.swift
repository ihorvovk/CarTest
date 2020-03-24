//
//  TaskView.swift
//  CarTest
//
//  Created by Ihor Vovk on 21.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    
    @State var title: String
    @State var car: String
    @State var carNumber: String
    @State var driver: String
    @State var tags: [(String, Color)]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
                .padding([.leading, .top], 20)
            
            HStack {
                Image(systemName: "car")
                Text(car)
                Text(carNumber)
                    .font(.system(size: 12, weight: .regular))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
            }.foregroundColor(.gray)
            .padding([.leading, .trailing], 20)
            
            HStack {
                Image(systemName: "person")
                Text(driver)
            }.foregroundColor(.gray)
            .padding([.leading, .trailing], 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tags, id: \..0) { tag in
                        Text(tag.0)
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(.white)
                            .padding(5)
                            .background(tag.1)
                            .cornerRadius(5)
                    }
                }.padding([.leading, .trailing], 20)
            }.padding([.bottom], 20)
        }.background(Color.white)
        .clipped()
        .shadow(color: .gray, radius: 3, x: 0, y: 3)
    }
}

struct TaskView_Previews: PreviewProvider {
    
    static var previews: some View {
        TaskView(title: "#234 Driver Front End Fender and 2 more", car: "2004 Ford Taurus", carNumber: "12SUP34", driver: "Bill Smith", tags: [("My Tag Text 1", .green), ("My Tag Text 2", .blue), ("My Tag Text 3", .purple), ("My Tag Text 4", .red), ("My Tag Text 5", .orange)])
    }
}
