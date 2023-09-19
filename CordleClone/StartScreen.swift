//
//  StartScreen.swift
//  CordleClone
//
//  Created by Emma Goldberg-Keller on 9/17/23.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        
        NavigationView {
        
            VStack {
                
                Text("CORDLE")
                    .font(.custom( "crayonkids", size: 90.0))
                    .offset(y: -40)
                
                
                Text("(cat wordle)")
                    .font(.custom( "crayonkids", size: 20.0))
                    .offset(y: -20)
                
                Image("cat_head")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .border(Color.black, width: 5)
                            .offset(y: 10)
                
                
                NavigationLink(destination:  ContentView()){
                    
                    
                    
                    Text("PLAY")
                        .padding(30)
                        .background(.white)
                        .foregroundStyle(.black).border(Color.red).bold()
                    
                }
                
                
                
                
                
                
                .background(Color.gray)
                .foregroundColor(Color.white)
                .border(Color.black)
                .font(.custom( "crayonkids", size: 60.0))
                .offset(y: 40)
                
                
                
                
                
                
                
            }
        }
        
        
        
        
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
