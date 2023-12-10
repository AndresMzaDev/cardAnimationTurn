//
//  ContentView.swift
//  GeometryProxy
//
//  Created by andres meza on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
        GeometryReader{ proxy in
            
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Rectangle()
                        .foregroundColor(Color.green)
                        .overlay(Text("1"))
                        .frame(width: proxy.size.width * 0.33, height: proxy.size.height/2)
                    Rectangle()
                        .foregroundColor(Color.orange)
                        .overlay(Text("2"))
                        .frame(width: proxy.size.width * 0.67, height: proxy.size.height/2)
                }
                Rectangle()
                    .foregroundColor(Color.purple)
                    .overlay(Text("3"))
                    .frame(width: proxy.size.width, height: proxy.size.height * 0.33)
            }
            
         
        }.background(Color.red)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
