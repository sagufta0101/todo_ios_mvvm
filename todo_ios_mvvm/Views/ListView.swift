//
//  ListView.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                
                ListItem(item: item)
            }
            .onDelete(perform:listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
        .navigationTitle("Todo App")
        .navigationBarItems(
            leading: EditButton(),
            trailing:NavigationLink(destination: {
                AddView()
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
    .environmentObject(ListViewModel())
}


