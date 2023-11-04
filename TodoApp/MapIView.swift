//
//  MapIView.swift
//  TodoApp
//
//  Created by USER on 2023/11/04.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapIView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
