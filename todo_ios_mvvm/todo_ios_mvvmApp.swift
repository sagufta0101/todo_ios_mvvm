//
//  todo_ios_mvvmApp.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

@main
struct todo_ios_mvvmApp: App {
    
    @StateObject var listViewModel:ListViewModel=ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
