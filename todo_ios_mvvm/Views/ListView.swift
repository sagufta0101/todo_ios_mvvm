//
//  ListView.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct ListView: View {
    
  @State  var nameList: [NameModel]=[NameModel(name: "Hitesg", isCompleted: true),
    NameModel(name: "Mushki", isCompleted: false),
    NameModel(name: "Huma", isCompleted: true)]
    
    var body: some View {
        List {
            ForEach(nameList) { item in
                
                ListItem(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
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
    
    func deleteItem(at:IndexSet){
        nameList.remove(atOffsets: at)
    }
    func moveItem(from:IndexSet,to:Int){
        nameList.move(fromOffsets: from, toOffset: to)
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


