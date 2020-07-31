import SwiftUI

struct Sierra: View {
    var body: some View {
        Image("sierra")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct Sierra_Previews: PreviewProvider {
    static var previews: some View {
       Sierra()
    }
}
