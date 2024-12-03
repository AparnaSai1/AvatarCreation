import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            // Avatar VStack
            VStack {
                Image("avatar") // Reference to the image added to Assets
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200) // Adjust size as needed
                    .clipShape(Circle()) // Make it circular
                    .shadow(radius: 20) // Add a shadow for aesthetics
                Text("Avatar") // Label for the avatar
                    .font(.caption)
            }
            
            // Name VStack
            VStack {
                Text("Aparna Sai Nimmagadda") // User's name
                    .multilineTextAlignment(.center)
                    .font(.system(size: 36,weight: .bold))
                    .fontWeight(.bold)
            }
            
            // MySpace Link VStack
            VStack {
                Link(destination: URL(string: "https://github.com/AparnaSai1")!) {
                    Text("Visit MySpace Profile")
                        .font(.title2)
                        .foregroundColor(.blue)
                        .underline()
                }
                    .font(.caption)
            }
        }
        .padding(.horizontal,50) // Adds padding around the entire VStack
        .padding(.vertical,60)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

