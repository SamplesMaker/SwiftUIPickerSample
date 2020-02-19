//
//  ContentView.swift
//  PickerSample
//
//  Created by MakeItSimple on 2020/02/20.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex = 0
    
    let appleDevices = ["iPhone", "iMac", "iPad", "Macbook", "MacbookPro", "AppleWatch"]
        
    var body: some View {
        Picker(selection: $selectedIndex, label: Text("")) {
            ForEach(0 ..< appleDevices.count) { idx in
                Text(self.appleDevices[idx]).tag(idx)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
