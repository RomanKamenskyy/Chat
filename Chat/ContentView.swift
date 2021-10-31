//
//  ContentView.swift
//  Chat
//
//  Created by Роман Каменский on 27.10.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State var isLoginMode = false
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 18){
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Login")
                            .tag(true)
                        Text("Create account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    
                    if !isLoginMode{
                        Button {
                            
                        } label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        }
                    }
                    
                    Group{
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                    .padding(.vertical,12)
                    .background(Color.white)
                    
                    
                    
                    Button {
                        
                    } label: {
                        HStack{
                            Spacer()
                            Text(isLoginMode ? "Log In" : "Create account")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .font(.system(size: 14, weight: .semibold))
                            Spacer()
                        }.background(.blue)
                    }
                }.padding()
                
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create account")
            .background(Color(.init(white: 0, alpha: 0.05)))
            
        }
    }
    
    private func handleAction(){
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
