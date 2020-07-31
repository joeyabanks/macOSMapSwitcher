import SwiftUI

struct ElCap: View {
    var body: some View {
        Image("elcap")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct ElCap_Previews: PreviewProvider {
    static var previews: some View {
        ElCap()
    }
}
