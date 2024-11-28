import SwiftUI

struct SearchView: View {
    @State private var searchText = "" // Adicionando o estado para a pesquisa
    
    // Pegar do JSON
    let clinics = ["Clinica A", "Clinica B", "Clinica C", "Clinica D", "Clinica E"]
    
    var filteredClinics: [String] {
        if searchText.isEmpty {
            return clinics
        } else {
            return clinics.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        VStack {
            TextField("Pesquisar clínicas", text: $searchText)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.2)))
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                
            Text("Clínicas")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.horizontal)
            
            // Se não houver clínicas filtradas, exibe a mensagem "Não encontrado"
            if filteredClinics.isEmpty {
                Text("Não encontrado")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding()
            } else {
                // Lista de clínicas (VStack)
                VStack(spacing: 10) {
                    ForEach(filteredClinics, id: \.self) { clinic in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.2))
                            .frame(height: 100)
                            .padding(.horizontal)
                            .overlay(
                                Text(clinic)
                                    .font(.headline)
                                    .padding()
                                    .foregroundColor(.black)
                            )
                    }
                }
            }
        }
        .padding(.vertical)
        
        TabBarView()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
