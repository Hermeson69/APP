import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            // Título da Página
            HStack {
                Text("Notificações")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            .padding(.top, 20)
            
            Divider()
            
           
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(0..<10, id: \.self) { index in
                        HStack(spacing: 15) {
                            // Ícone da Notificação
                            Circle()
                                .fill(Color.orange.opacity(0.8))
                                .frame(width: 50, height: 50)
                                .overlay(
                                    Image(systemName: "bell.fill")
                                        .font(.title2)
                                        .foregroundColor(.white)
                                )
                            
                            // Texto da Notificação
                            VStack(alignment: .leading, spacing: 5) {
                                Text("Notificação \(index + 1)")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                
                                Text("Esta é a descrição da notificação \(index + 1).")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .lineLimit(2)
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray.opacity(0.1))
                        )
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 10)
                .padding(.horizontal, 3)
            }
        }
        .padding(.bottom, 20)
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}
