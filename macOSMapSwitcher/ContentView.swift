import SwiftUI
import MapKit

struct returnLocation: View {
    @Binding var isMavericks: Bool
    @Binding var isYosemite: Bool
    @Binding var isElCap: Bool
    @Binding var isSierra: Bool
    @Binding var isHighSierra: Bool
    @Binding var isMojave: Bool
    @Binding var isCatalina: Bool
    @Binding var isBigSur: Bool
    @Binding var setLat: Double
    @Binding var setLong: Double
    
    func setLocation() {
        if isMavericks {
            self.isMavericks.toggle()
            self.setLat = 37.4956
            self.setLong = -119.6377
            self.isYosemite.toggle()
        } else if isYosemite {
            self.isYosemite.toggle()
            self.setLat = 37.7339
            self.setLong = -119.6377
            self.isElCap.toggle()
        } else if isElCap {
            self.isElCap.toggle()
            self.setLat = 38.2692
            self.setLong = -119.5742
            self.isSierra.toggle()
        } else if isSierra {
            self.isSierra.toggle()
            self.setLat = 36.5548
            self.setLong = -118.7490
            self.isHighSierra.toggle()
        } else if isHighSierra {
            self.isHighSierra.toggle()
            self.setLat = 35.0110
            self.setLong = -115.4734
            self.isMojave.toggle()
        } else if isMojave {
            self.isMojave.toggle()
            self.setLat = 33.3879
            self.setLong = -118.4163
            self.isCatalina.toggle()
        } else if isCatalina {
            self.isCatalina.toggle()
            self.setLat = 36.2704
            self.setLong = -121.8081
            self.isBigSur.toggle()
        }
        else {
            self.isBigSur.toggle()
            self.setLat = 37.4956
            self.setLong = -122.4967
            self.isMavericks.toggle()
        }
    }
    
    var body: some View {
        VStack (spacing: 24 ) {
            VStack {
                if isBigSur {
                    VStack (spacing: 16) {
                        BigSur()
                        VStack (spacing: 4) {
                            Text("Big Sur")
                                .font(.title)
                            Text("11.0")
                                .font(.callout)
                        }
                    }
                } else if isSierra {
                    VStack (spacing: 16) {
                        Sierra()
                        VStack (spacing: 4) {
                            Text("Sierra")
                                .font(.title)
                            Text("10.12")
                                .font(.callout)
                        }
                    }
                } else if isMojave {
                    VStack (spacing: 16) {
                        Mojave()
                        VStack (spacing: 4) {
                            Text("Mojave")
                                .font(.title)
                            Text("10.14")
                                .font(.callout)
                        }
                    }
                } else if isHighSierra {
                    VStack (spacing: 16) {
                        HighSierra()
                        VStack (spacing: 4) {
                            Text("High Sierra")
                                .font(.title)
                            Text("10.13")
                                .font(.callout)
                        }
                    }
                } else if isMavericks {
                    VStack (spacing: 16) {
                        Mavericks()
                        VStack (spacing: 4) {
                            Text("Mavericks")
                                .font(.title)
                            Text("10.9")
                                .font(.callout)
                        }
                    }
                } else if isElCap {
                    VStack (spacing: 16) {
                        ElCap()
                        VStack (spacing: 4) {
                            Text("El Capitan")
                                .font(.title)
                            Text("10.11")
                                .font(.callout)
                        }
                    }
                } else if isYosemite {
                    VStack (spacing: 16) {
                        Yosemite()
                        VStack (spacing: 4) {
                            Text("Yosemite")
                                .font(.title)
                            Text("10.10")
                                .font(.callout)
                        }
                    }
                } else {
                    VStack (spacing: 16) {
                        Catalina()
                        VStack (spacing: 4) {
                            Text("Catalina")
                                .font(.title)
                            Text("10.15")
                                .font(.callout)
                        }
                    }
                }
            }
            .animation(.default)
            
            
            VStack {
                Button(action: {
                    self.setLocation()
                }) {
                    Text("Next")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .padding(12)
                .background(Color.accentColor)
                .cornerRadius(8)
                .animation(.default)
            }
        }
    }
}

struct MapBackground: UIViewRepresentable {
    @Binding var setLat: Double
    @Binding var setLong: Double
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: setLat, longitude: setLong)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
    }
}

struct ContentView: View {
    @State var isMavericks: Bool = true
    @State var isYosemite: Bool = false
    @State var isElCap: Bool = false
    @State var isSierra: Bool = false
    @State var isHighSierra: Bool = false
    @State var isMojave: Bool = false
    @State var isCatalina: Bool = false
    @State var isBigSur: Bool = false
    @State var setLat = 37.4956
    @State var setLong = -122.4967
    
    var body: some View {
        ZStack {
            MapBackground(setLat: $setLat, setLong: $setLong)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    VStack (alignment: .leading, spacing: 4) {
                        returnLocation(
                            isMavericks: $isBigSur,
                            isYosemite: $isSierra,
                            isElCap: $isMojave,
                            isSierra: $isHighSierra,
                            isHighSierra: $isElCap,
                            isMojave: $isCatalina,
                            isCatalina: $isYosemite,
                            isBigSur: $isMavericks,
                            setLat: $setLat, setLong: $setLong)
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding(24)
                .frame(width: 350)
                .background(Color.white)
                .cornerRadius(24)
                .shadow(radius: 14)
                .offset(y: UIScreen.main.bounds.height - 580)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
