import SwiftUI

struct APP: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 20) {
                    // Header
                    HStack {
                        Circle()
                            .fill(Color.orange)
                            .frame(width: 50, height: 50)
                            .overlay(Text("🙂")) // Avatar emoji
                        Text("Hello Jonny.")
                            .font(.title2)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: NotificationsView()) {
                            ZStack {
                                Image(systemName: "bell")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 20, height: 20)
                                    .overlay(
                                        Text("5")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                    )
                                    .offset(x: 10, y: -10)
                            }
                        }
                    }
                    .padding(.horizontal)

                    // Title Section
                    Text("Destaques:")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                    VStack{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.2))
                            .frame(width: 200, height: 60)
                            .padding(.horizontal)
                    }
                    
                    

                    ScrollView {
                        VStack(spacing: 20) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.2))
                                .frame(height: 200)
                                .padding(.horizontal)

                            Text("Mais Bem Avaliados: ")
                                .font(.title3)
                                .bold()
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(0..<5) { _ in
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.gray.opacity(0.2))
                                            .frame(width: 150, height: 100)
                                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2) // Optional shadow
                                    }
                                }
                                .padding(.horizontal)
                            }
                            .frame(height: 120)

                            Text("Filtros")
                                .bold()
                                .padding(.horizontal, 3)

                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 10) {
                                    ForEach(0..<5, id: \.self) { index in
                                        Button(action: {
                                            print("Filtro \(index + 1) ativado")
                                        }) {
                                            HStack {
                                                //Image(systemName: index % 2 == 0 ? "map.fill" : "star.fill") // Ícones alternados
                                                //Text(index % 2 == 0 ? "Filtro \(index + 1)" : "Mais Avaliados")
                                                    //.font(.subheadline)
                                                    //.fontWeight(.semibold)
                                            }
                                            .padding()
                                            .foregroundColor(.black)
                                            .frame(width: 150, height: 40)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .fill(Color.gray.opacity(0.2))
                                                    .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 4)
                                            )
                                        }
                                    }
                                }
                                .padding(.horizontal)
                            }


                            // Clinics List Section
                            Text("Clinicas")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .padding(.horizontal)

                            VStack(spacing: 10) {
                                ForEach(0..<10) { _ in
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.gray.opacity(0.2))
                                        .frame(height: 100)
                                        .padding(.horizontal)
                                }
                            }
                        }
                        .padding(.vertical)
                    }
                }
                .padding(.vertical)
                .navigationBarHidden(true)
                .background(Color.white)
                
                // Navbar Inferior
                Spacer()
                TabBarView()
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        APP()
    }
}
