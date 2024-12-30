//
//  ListItem.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack(content: {
            Image(systemName: "checkmark.circle")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
        })
    }
}

#Preview {
    ListItem()
}
