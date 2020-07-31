import SwiftUI

struct Mojave: View {
    var body: some View {
        Image("mojave")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct Mojave_Previews: PreviewProvider {
    static var previews: some View {
       Mojave()
    }
}
