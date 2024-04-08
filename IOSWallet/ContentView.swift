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
            
            VStack{
                Text("Simply \nBusiness \nBanking App")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Create Account")
                    Image(systemName: "arrow.right")
                }).foregroundColor(.white)
                
                
                
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
