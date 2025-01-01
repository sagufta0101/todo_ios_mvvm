//
//  ListViewModel.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 01/01/25.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items:[NameModel]=[]
    
    init( ){
        getItems()
    }
    func getItems(){
        let newItem=[NameModel(name: "Hitesg", isCompleted: true),
                     NameModel(name: "Mushki", isCompleted: false),
                     NameModel(name: "Huma", isCompleted: true)]
        items.append(contentsOf: newItem)
        
    }
    
    func deleteItem(at:IndexSet){
        items.remove(atOffsets: at)
    }
    func moveItem(from:IndexSet,to:Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(item:String){
        items.append(NameModel(name: item, isCompleted: false))
    }
}
