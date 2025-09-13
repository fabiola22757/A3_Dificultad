//
//  ContentView.swift
//  A3_Dificultad
//
//  Created by win603 on 12/09/25.
//

import SwiftUI

struct ContentView: View {
    //Constantes y variables
    var imagen = String("patricio")
    
    var body: some View {
        VStack {
            Text("How tough are you?")
                .padding(.bottom, 20)
            HStack {
                Rectangle()
                    .frame(width: 160, height: 180)
                    .overlay(
                        VStack {
                            Button(action: { }){
                                Text("Cacahuate")
                                    .font(.custom("gameplay", size: 16))
                                    .foregroundStyle(.black)
                                    .padding(.bottom, 15)
                            }
                            Button(action: { }){
                                Text("Medium")
                                    .font(.custom("gameplay", size: 16))
                                    .foregroundStyle(.black)
                                    .padding(.bottom, 15)
                            }
                            Button(action: { }){
                                Text("Hard")
                                    .font(.custom("gameplay", size: 16))
                                    .foregroundStyle(.black)
                            }
                        }
                            .padding()
                            .frame(width: 300, height: 200)
                        )
                    .cornerRadius(20)
                Image(imagen)
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) //frame
        .foregroundStyle(.mostaza) //color de letra
        .font(.custom("gameplay", size: 18)) //fuente personalizada
        .background(Color.black.opacity(0.8)) //fondo
    }
}

#Preview {
    ContentView()
}
