//
//  AgendaView.swift
//  APP
//
//  Created by user on 21/11/24.
//

import SwiftUI

struct AgendaView: View {
    var body: some View {
        VStack{
            Text("Nem um Agendamento Marcado")
                .bold()
                .font(.title2)
            .padding(.top, 50)
            Spacer()
            TabBarView()
        }
    }
}

struct AgendaView_Previews: PreviewProvider {
    static var previews: some View {
        AgendaView()
    }
}
