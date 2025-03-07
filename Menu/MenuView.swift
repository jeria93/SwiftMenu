//
//  ContentView.swift
//  Menu
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-05.
//

import SwiftUI

struct MenuView: View {
    
    @State private var menuItems: [MenuItem] = []
    private var data = DataService()
    
    var body: some View {
        
        List(menuItems) { item in
            
            MenuListRow(item: item)
        }
        .listStyle(.plain)
        .onAppear() {
            menuItems = data.getData()
        }
    }
}

#Preview {
    MenuView()
}
