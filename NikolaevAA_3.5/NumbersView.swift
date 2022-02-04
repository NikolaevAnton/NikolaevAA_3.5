//
//  NumbersView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) {person in
                Section(header: Text("\(person.fullName)")) {
                    Text("\(person.phoneNumber)")
                    Text("\(person.email)")
                }
            }
            .listStyle(.plain)
        .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
