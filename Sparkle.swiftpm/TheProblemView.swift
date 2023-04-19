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
            Text("Anna is a very active person, she tried many times to organize her house, but no matter how much she tries, she always have a sense of chaos, her house always feels messy.")
                .frame(alignment: .leading)
                //.padding(.bottom,16)
            Image("nonJoyfulHouseImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()
            NavigationStack{
                NavigationLink(destination: UseMethodView()){
                    Text("Next")
                        .bold()
                        .foregroundColor(.black)
                }.buttonStyle(.borderedProminent)
                .frame(alignment: .bottom)
            }.navigationTitle("Presenting Anna")
        }.padding(16)
    }
}

struct TheProblemView_Previews: PreviewProvider {
    static var previews: some View {
        TheProblemView()
    }
}
