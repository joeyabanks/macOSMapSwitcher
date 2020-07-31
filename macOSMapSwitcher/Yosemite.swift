import SwiftUI

struct Yosemite: View {
    var body: some View {
        Image("yosemite")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
            
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct Yosemite_Previews: PreviewProvider {
    static var previews: some View {
        Yosemite()
    }
}
