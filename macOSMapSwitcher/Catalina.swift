import SwiftUI

struct Catalina: View {
    var body: some View {
        Image("catalina")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct Catalina_Previews: PreviewProvider {
    static var previews: some View {
        Catalina()
    }
}
