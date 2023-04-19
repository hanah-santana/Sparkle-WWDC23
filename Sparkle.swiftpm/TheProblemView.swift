//
//  TheProblemView.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI

struct TheProblemView: View {
    var body: some View {
        VStack{
            Text("Anna is a very active person, she tried many times to organize her house, but no matter how much she tries, she always have a sense of chaos, her room always feels messy.")
            Image("nonJoyfulHouseImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            NavigationStack{
                NavigationLink(destination: UseMethodView()){Text("NEXT")}
            }.navigationTitle("Presenting Anna")
        }.padding(16)
    }
}

struct TheProblemView_Previews: PreviewProvider {
    static var previews: some View {
        TheProblemView()
    }
}
