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
            
            HStack {
                
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                
                Text(item.name)
                    .bold()
                
                Spacer()
                
                Text("$" + item.price)
                
            }.listRowSeparator(.hidden)
                .listRowBackground(
                    Color.brown
                        .opacity(0.1)
                )
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
