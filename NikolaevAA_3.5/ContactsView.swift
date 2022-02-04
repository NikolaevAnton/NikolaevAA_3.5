//
//  ContentView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct ContactsView: View {
    
    let persons: [Person]
    
    var body: some View {
        
        
        NavigationView {
            List(persons) { person in
                
                NavigationLink(destination:
                                UserProfileView(person: person))
                {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
        
        
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
