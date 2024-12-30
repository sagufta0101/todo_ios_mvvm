//
//  NameModel.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import Foundation

struct NameModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let isCompleted: Bool
}
