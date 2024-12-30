//
//  ListView.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListItem()
        }
        .navigationTitle("Todo App")
        .navigationBarItems(
            leading: EditButton(),
            trailing:NavigationLink(destination: {
            Text("Add")
        }, label: {
            Text("Add")
        })
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


