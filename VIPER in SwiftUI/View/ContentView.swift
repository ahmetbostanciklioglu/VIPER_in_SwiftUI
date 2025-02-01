import SwiftUI

struct ContentView: View {
    
    @StateObject private var presenter = UserPresenter()
    
    var body: some View {
        VStack {
            if let user = presenter.user {
                Text("Adı: \(user.name)")
                Text("Yaşı: \(user.age)")
            } else {
                ProgressView()
            }
        }
        .padding()
        .onAppear {
            presenter.loadUser()
        }
    }
}




#Preview {
    ContentView()
}
