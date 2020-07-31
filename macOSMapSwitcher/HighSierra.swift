import SwiftUI

struct HighSierra: View {
    var body: some View {
        Image("highsierra")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct HighSierra_Previews: PreviewProvider {
    static var previews: some View {
       HighSierra()
    }
}
