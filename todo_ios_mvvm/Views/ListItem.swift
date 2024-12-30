//
//  ListItem.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct ListItem: View {
    
    let item: NameModel
    
    
    var body: some View {
        HStack(content: {
            Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                .foregroundColor(item.isCompleted ? Color.green: Color.red)
            Text(item.name)
            Spacer()
        })
    }
}

#Preview {
    let item1 = NameModel(name: "Hitesh", isCompleted: false)
    let item2 = NameModel(name: "Mushki", isCompleted: true)
    
   return Group {
          ListItem(item: item1)
          ListItem(item: item2)
      }
}
