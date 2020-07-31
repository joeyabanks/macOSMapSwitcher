 import SwiftUI

struct Mavericks: View {
    var body: some View {
        Image("mavericks")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
            
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct Mavericks_Previews: PreviewProvider {
    static var previews: some View {
        Mavericks()
    }
}
