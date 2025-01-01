//
//  AddView.swift
//  todo_ios_mvvm
//
//  Created by Administrator on 30/12/24.
//

import SwiftUI

struct AddView: View {
    @State var input:String=""
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode

    @State var showAlert:Bool=false
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your task", text: $input)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(Color.gray.opacity(0.2)))
                    .cornerRadius(10)
                
                Button(action: {
                    if (input.count>4) {
                        listViewModel.addItem(item: input)
                        presentationMode.wrappedValue.dismiss()
                    }else{
                        showAlert.toggle()
                    }
                  
                }, label: {
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
        .alert(isPresented: $showAlert, content: {
           Alert(title:  Text("Atleast 3 character required"))
        })

    }
}

#Preview {
    
    NavigationView{
        AddView()
        }
    .environmentObject(ListViewModel())
    }

