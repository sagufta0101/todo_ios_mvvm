//
//  AddView.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct AddView: View {
    @State var input:String=""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your task", text: $input)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(Color.gray.opacity(0.2)))
                    .cornerRadius(10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Save".uppercased())
                })
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(10)
            }.padding(14)
                
                
        }
        .navigationTitle("Add Task")

    }
}

#Preview {
    
    NavigationView{
        AddView()
        }
    }

