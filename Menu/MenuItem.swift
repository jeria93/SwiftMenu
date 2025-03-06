//
//  MenuItem.swift
//  Menu
//
//  Created by Nicholas Samuelsson Jeria on 2025-03-06.
//

import Foundation

struct MenuItem {
    
    var name: String
    var price: String
    var imageName: String
    
    func testPrint() { print(name) }
    
}

//det som en cell kommer innehålla är en struct

var menu1: MenuItem = MenuItem(
    name: "Burger",
    price: "10kr",
    imageName: "burger"
)
var menu2: MenuItem = MenuItem(
    name: "Pommes Frites",
    price: "5kr",
    imageName: "pommesfrites"
)
var menu3: MenuItem = MenuItem(
    name: "Coca Cola",
    price: "2kr",
    imageName: "coca-cola"
)

