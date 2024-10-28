import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to my iOS app!")
                .font(.title)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
