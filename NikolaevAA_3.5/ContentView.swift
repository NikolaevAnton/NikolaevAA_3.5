//
//  ContentView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let persons = Person.getContactList()
    private let navigationName = "Contact List"
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsView(persons: persons, navigationName: navigationName)
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("contacts")
                    }
                NumbersView(persons: persons, navigationName: navigationName)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("numbers")
                    }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
