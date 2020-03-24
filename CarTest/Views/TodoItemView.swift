//
//  TodoItemView.swift
//  CarTest
//
//  Created by Ihor Vovk on 21.03.2020.
//  Copyright © 2020 Ihor Vovk. All rights reserved.
//

import SwiftUI

struct TodoItemView: View {
    
    @State var title: String
    @State var isDone: Bool
    @State var tag: String?
    @State var status: String?
    @State var hasDetails: Bool
    
    var body: some View {
        HStack {
            Image(systemName: statusImageName)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(titleColor)
                .strikethrough(isDone, color: .gray)
            Spacer()
            
            tag.map { status in
                Text(status)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color.gray.opacity(tagBackgroundOpacity))
                    .clipShape(Circle())
            }
            
            status.map { status in
                Text(status)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.gray)
                    .padding(5)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(5)
            }
            
            if hasDetails {
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }
        }.padding()
        .background(Color.white)
        .cornerRadius(5)
        .clipped()
        .shadow(color: .gray, radius: 3, x: 0, y: 3)
    }
}

private extension TodoItemView {
    
    var statusImageName: String {
        isDone ? "checkmark.square" : "square"
    }
    
    var titleColor: Color {
        isDone ? .gray : .black
    }
    
    var tagBackgroundOpacity: Double {
        isDone ? 0.5 : 0.8
    }
}

struct TodoItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        List {
            TodoItemView(title: "This is a todo item", isDone: false, tag: "RD", hasDetails: true)
            TodoItemView(title: "This is a todo item", isDone: true, tag: "RD", hasDetails: true)
            TodoItemView(title: "This is a todo item", isDone: false, status: "Inspection", hasDetails: false)
        }
    }
}
