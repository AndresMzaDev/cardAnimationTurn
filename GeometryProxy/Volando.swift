//
//  Volando.swift
//  GeometryProxy
//
//  Created by andres meza on 2/2/22.
//

import SwiftUI

let arrayOfNames = [
    "A",
    "B" ,
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H"
]


struct Volando: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack{
                ForEach(arrayOfNames, id: \.self) {
                    name in GeometryReader {
                        proxy in
                        VStack{
                            
                            Text("\(name)")
                                .frame(width: 370, height: 200)
                                .background(Color.orange   )
                                .cornerRadius(20)
                            Spacer()
                        }
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                        .rotation3DEffect(Angle (degrees: Double(proxy.frame(in: .global).minY)-47), axis: (x: 0.0    , y: 10.0, z: 0.0))
                    }
                    .frame(width: 400, height: 200)
                }
            }.padding(.trailing)
        }.padding(.horizontal)
        
        
    }
}

struct Volando_Previews: PreviewProvider {
    static var previews: some View {
        Volando()
    }
}
