//
//  TabBarView.swift
//  APP
//
//  Created by user on 21/11/24.
//

import SwiftUI
struct TabBarView: View {
    var body: some View {
        HStack {
            Spacer()
            
            
           
                VStack {
                    Image(systemName: "house.fill")
                        .font(.title2)
                    Text("Home")
                    .font(.caption)
                
            }
            .foregroundColor(.black)
            Spacer()
            
            
            NavigationLink(destination: SearchView()){
                VStack {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                    Text("Busca")
                        .font(.caption)
                }
            }
            .foregroundColor(.black)
            Spacer()
            
            // Agendamentos
            NavigationLink(destination: AgendaView()){
                VStack {
                    Image(systemName: "calendar")
                        .font(.title2)
                    Text("Agenda")
                        .font(.caption)
                }
            }
            .foregroundColor(.black)
            Spacer()
            
            // Menu
            VStack {
                Image(systemName: "line.3.horizontal")
                    .font(.title2)
                Text("Menu")
                    .font(.caption)
            }
            .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 60)
        .background(Color.white)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: -5) // Shadow for navbar
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
