//
//  ContentView.swift
//  BirthdayApp
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends:[Friend] = [Friend(name: "Joan", birthday: .now), Friend(name:"Sienna", birthday: .now)]
    
    var body: some View {
        NavigationStack{
            List(friends, id:\.name){
                friend in
                HStack{
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
                
            }
            .navigationTitle("Birthdays")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
