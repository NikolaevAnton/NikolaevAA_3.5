//
//  ContentView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        
        TabView {
            ContactsView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("contacts")
                }
            NumbersView(persons: persons)
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
