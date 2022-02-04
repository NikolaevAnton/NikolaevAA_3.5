//
//  ContentView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    let navigationName: String
    
    var body: some View {
        List(persons) {person in
            Text(person.fullName)
        }
        .listStyle(.plain)
        .navigationTitle(navigationName)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList(), navigationName: "Contact List")
    }
}
