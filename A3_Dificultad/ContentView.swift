//
//  ContentView.swift
//  A3_Dificultad
//
//  Created by win603 on 12/09/25.
//

import SwiftUI

struct ContentView: View {
    //Constantes y variables
    @State var caracteristicas: String = " "
    @State var imagen: String = "sponge"
    @State var nivel: Int = 0
    
    //Función a ejecutar en botones
    func cambiarNivel(_ niv: Int){
        nivel = niv
        if niv == 1{
            imagen = "plankton"
            caracteristicas = "Balde de carnada!"
        } else if niv == 2{
            imagen = "patricio"
            caracteristicas = "Yo no entiendo nada!"
        } else if niv == 3{
            imagen = "bob"
            caracteristicas = "Soy un cacahuate!"
        }
    }
    
    //Body
    var body: some View {
        VStack {
            Text("Que tan hombre eres?")
                .font(.custom("gameplay", size: 25))
                .padding(.bottom, 40)
            Image(imagen)
                .resizable()
                .frame(width: 250, height: 200)
                .padding(.bottom, 40)
            Text(caracteristicas)
                .font(.custom("gameplay", size: 16))
                .padding(.bottom, 40)
            //Botones
            VStack (spacing: 10){
                Button(action: {
                    withAnimation{
                        cambiarNivel(1)
                    }
                }){
                    Text("Balde de carnada (1)")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(nivel == 1 ? Color.cyan : Color.white)
                .cornerRadius(15)
                
                Button(action: {
                    withAnimation{
                        cambiarNivel(2)
                    }
                }){
                    Text("Cabeza de chorlito (2)")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(nivel == 2 ? Color.pat : Color.white)
                .cornerRadius(15)
                
                Button(action: {
                    withAnimation{
                        cambiarNivel(3)
                    }
                }){
                    Text("Cacahuate (3)")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(nivel == 3 ? Color.yellow : Color.white)
                .cornerRadius(15)
            }
            .padding()
            .font(.custom("gameplay", size: 16))
            .foregroundStyle(.black)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) //frame
        .foregroundStyle(.mostaza) //color de letra
        .background(Color.black.opacity(0.8)) //fondo
    }
}

#Preview {
    ContentView()
}
