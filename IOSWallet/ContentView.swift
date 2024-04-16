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
                Spacer().frame(height:150)
                
                // todo create a zstack with all
                
                Image("tick")                  
                    .padding(.leading,20)
                    .padding(.bottom,20)



                Text("Simply \nBusiness \nBanking App")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                    .padding(.leading,20)

                Spacer()

                // todo find a way to resuse view properties such as background and corner radius to clean up code
                
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
                    .frame(width: 325, height: 60,alignment: .trailing )
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .cornerRadius(15)
                    .padding(.leading, 20)
                
                
                Rectangle()
                    .frame(width: 325, height: 2)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.leading, 20)
                
                
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
                    .frame(width: 325, height: 60)
                    .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                    .cornerRadius(15)
                    .padding(.leading, 20)

                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("icon_google")

                    Text("Sign In with Google")
                      .font(
                        Font.custom("SF Pro Display", size: 20)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.black)
                      .frame(width: 281, alignment: .center)
                    
                })
                    .foregroundColor(.white)
                    .frame(width: 325, height: 60)
                    .background(.white)
                    .cornerRadius(15)
                    .padding(.top, 25)
                    .padding(.leading, 20)
                

                
                Spacer()
                
            }.frame(minWidth: 0, maxWidth: .infinity,
                    minHeight: 0,maxHeight: .infinity)
            .background(                Image("background_purple").resizable()
            )
            .background(Color.purple)
            
        }
        
    detail: {
            Text("Select an item")
        }
    .preferredColorScheme(.dark)
    }

}


struct IntroductionView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        NavigationSplitView {
            
            VStack(alignment: .leading){
                Spacer().frame(height:150)
                
                Text("Welcome \nBack")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.leading,20)
                    .padding(.top, 20)
                
                
                Spacer()
                VStack{
                    Text("Login")
                        .font(.title)
                        .foregroundColor(Color.black)
                        .padding(.leading,20)
                        .padding(.top, 20)
                    HStack {
                        Image(systemName: "plane")
                        TextField("Username",  text: $username)
                            .foregroundColor(Color.black)
                            .font(Font.custom("Papyrus", size: 16))
                    }
          
                    TextField("Username", text: $username).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    TextField("Password", text: $password)

                    
                    HStack{
                        Text("Back").foregroundColor(.gray)                            .font(Font.custom("Roboto", size: 16))

                        Button(action: {}, label: {
                            Text("Sign in")
                                .font(Font.custom("SF Pro Display", size: 20)
                                        .weight(.bold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 172, alignment: .leading)
                            Image(systemName: "arrow.right")
                        })
                        .foregroundColor(.white)
                        .frame(width: 325, height: 60,alignment: .trailing )
                        .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                        .cornerRadius(15)
                        .padding(.leading, 20)
                    }
                    
                    
                    Rectangle()
                        .frame(width: 325, height: 2)
                        .background(Color(red: 0.04, green: 0.23, blue: 0.63))
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .padding(.leading, 20)
                    
                    
                    
                    
                    Text("Did you forget your password?")
                        .foregroundColor(.black)
                    Text("Tap here for reset")
                        .foregroundColor(.purple)
                        .underline()
                    
                    Spacer()
                }
                .background(.white)
                .cornerRadius(16.0)
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.leading,0)
                
                
            }
            .frame(minWidth: 0, maxWidth: .infinity,
                   minHeight: 0,maxHeight: .infinity)
            .background(            
                Image("background_purple").resizable()
            )
            .background(Color.purple)
            
        }
        
    detail: {
        Text("Select Login")
    }
    .preferredColorScheme(.dark)
    }

}

/**
 
    For screen 4 Home when a card is currently in view tracked the index
 In the vstack if(currentposition == indexoflist) make the bottom indicator bar longer else make it normal sized. The three HsTACK views indicatiing number of cards that is.
 */


#Preview {
    IntroductionView()
        .modelContainer(for: Item.self, inMemory: true)
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}


