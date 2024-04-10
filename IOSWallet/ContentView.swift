//
//  ContentView.swift
//  IOSWallet
//
//  Created by Samuel Nyamai on 08/04/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        NavigationSplitView {
            
            VStack(alignment: .leading){
                Spacer().frame(height:100)

                Text("Simply \nBusiness \nBanking App")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .padding(.leading,20)

                Spacer()

                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Create Account")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .frame(width: 281, alignment: .leading)
                    Image(systemName: "arrow.right")
                })
                    .foregroundColor(.white)
                    .frame(width: 375, height: 60)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .cornerRadius(15)
                
                Rectangle()
                    .frame(width: 375, height: 2)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("I have an account")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .frame(width: 281, alignment: .leading)
                    Image(systemName: "arrow.right")
                })
                    .foregroundColor(.white)
                    .frame(width: 375, height: 60)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .cornerRadius(15)
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")

                    Text("Sign In with Google")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                      .frame(width: 281, alignment: .center)
                })
                    .foregroundColor(.white)
                    .frame(width: 375, height: 60)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .cornerRadius(15)
                    .padding(.top, 25)
                
                Spacer()
                
            }.frame(minWidth: 0, maxWidth: .infinity,
                    minHeight: 0,maxHeight: .infinity)
            .background(Color.purple)
            
        }
        
    detail: {
            Text("Select an item")
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
