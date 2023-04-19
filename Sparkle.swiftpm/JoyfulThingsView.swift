//
//  JoyfulThingsView.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI

struct JoyfulThingsView: View {
    var body: some View {
        VStack{
            Text("After decluttering, she noticed that her house has more space to what is actually important to her: gifts, throphies, photos, stones and so on… ")
            Image("joyfulBoxImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Even though they have no practical utility as tools, they sparkle joy to her and no longer need to be stored inside a box.")
            Text("She noticed that hey now can have designated spaces arround the house.")
            NavigationStack{
                NavigationLink(destination: PhotoSliderView()) {Text("Next")}
            }.navigationTitle("Space to what is important")
        }.padding(16)
    }
}

struct JoyfulThingsView_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulThingsView()
    }
}
