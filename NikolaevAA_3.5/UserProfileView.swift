//
//  UserProfileView.swift
//  NikolaevAA_3.5
//
//  Created by Anton Nikolaev on 04.02.2022.
//

import SwiftUI

struct UserProfileView: View {
    let person: Person
    
    var body: some View {
        
        
        
        List {
            Section(header:
                        Text("\(person.fullName)")
                        .fontWeight(.heavy)
                        .font(.largeTitle)
                        .foregroundColor(.black)
            )
            {
                
                HStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                    .frame(width: 250, height: 250)
                    Spacer()
                }
                HStack {
                    Image(systemName: "phone")
                    Text("\(person.phoneNumber)")
                }
                HStack {
                    Image(systemName: "envelope")
                    Text("\(person.email)")
                }
            }
        }
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView(person: Person(id: 1, name: "1", surname: "1", email: "1", phoneNumber: "1"))
    }
}
