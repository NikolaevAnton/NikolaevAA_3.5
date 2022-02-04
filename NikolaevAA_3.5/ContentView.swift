//
//  ContentView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("contacts")
                }
            NumbersView()
                .tabItem {
                    Image(systemName: "phone")
                    Text("numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
