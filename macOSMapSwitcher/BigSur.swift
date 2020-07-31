import SwiftUI

struct BigSur: View {
    var body: some View {
        Image("bigsur")
            .resizable().scaledToFit()
            .frame(width: 120)
            .clipShape(Circle())
            
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4)
            .shadow(radius: 10)
        )
    }
}

struct BigSur_Previews: PreviewProvider {
    static var previews: some View {
        BigSur()
    }
}
