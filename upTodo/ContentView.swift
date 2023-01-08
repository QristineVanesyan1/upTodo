//
//  ContentView.swift
//  upTodo
//
//  Created by Christine Vanesyan on 1/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Login")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .foregroundColor(Color("titleTextColor"))
                .multilineTextAlignment(.leading)
            Spacer()
            //TODO
            TextField("Enter your Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
            Spacer()
            VStack{
                FilledButton(label: "Login")
                LabelledDivider(label: "or").padding(.vertical, 30.0)
                OutlinedButton(label: "Login with Google", image: "google").padding(.bottom, 20.0)
                OutlinedButton(label: "Login with Apple", image: "apple").padding(.bottom, 46.0)
            }
            
            HStack{
                Text("Don’t have an account?")
                    .font(.system(size: 12))
                    .foregroundColor(Color("titleTextColor"))
                
                Button(action: {
                    print("sign up bin tapped")
                }) { Text("Register")
                        .font(.system(size: 12))
                    .foregroundColor(Color("lightGreyColor"))}
            }
            
            
        }.padding(.horizontal, 24.0).background(Color("greyColor"))
        
        
    }
    
}
struct FilledButton: View {
    let label: String
    
    init(label: String) {
        self.label = label
    }
    var body: some View {
        Button(label) {
            
        }.frame(maxWidth: .infinity).padding()
            .background(Color("accentColor"))
            .cornerRadius(4).foregroundColor(Color.white)
    }
}


struct LabelledDivider: View {
    
    let label: String
    let horizontalPadding: CGFloat
    let color: Color
    
    init(label: String, horizontalPadding: CGFloat = 0, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }
    
    var body: some View {
        HStack {
            line
            Text(label).font(.system(size: 16)).foregroundColor(color)
            line
        }
    }
    
    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}



struct OutlinedButton: View {
    let label: String
    let image: String
    
    init(label: String, image: String) {
        self.label = label
        self.image = image
    }
    
    var body: some View {
        Button(action: {
            print("sign up bin tapped")
        }) {
            HStack{
                Image(image)
                Text(label)
            }.frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 16))
                .padding()
                .foregroundColor(Color("titleTextColor"))
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color("accentColor"), lineWidth: 2))
        }
        .cornerRadius(4)
    }
}

