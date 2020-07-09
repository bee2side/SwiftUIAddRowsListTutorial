//
//  ContentView.swift
//  SwiftUIAddRowsListTutorial
//
//  Created by Doris on 2020/07/09.
//  Copyright © 2020 kakao. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var locations = ["Beach", "Forest", "Desert"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locations, id: \.self) { location in
                    Text(location)
                }
            }
        .navigationBarTitle(Text("Locations"))
            .navigationBarItems(trailing: Button(action: {
                self.addRow()
            }) {
                Image(systemName: "plus")
            })
        }
        .accessibilityAction {
            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Code@*//*@END_MENU_TOKEN@*/
        }
    }
    
    private func addRow(){
        self.locations.append("New Location")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
