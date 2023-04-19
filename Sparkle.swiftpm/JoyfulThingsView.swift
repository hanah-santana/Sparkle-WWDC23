//
//  JoyfulThingsView.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI

struct JoyfulThingsView: View {
    var body: some View {
        NavigationStack{
            VStack {
                VStack(alignment: .leading){
                    Text("After decluttering, she noticed that her house has more space to what is actually important to her: gifts, throphies, photos, stones and so on.")
                        .padding(.bottom,8)
                    Text("Even though they have no practical utility as tools, they sparkle joy to her and no longer need to be stored inside a box.\nShe noticed that hey now can have designated spaces arround the house.")
                        
                }.navigationTitle("Space to what is important")
                .padding(.bottom,16)
                
                VStack {
                    Spacer()
                    Image("joyfulBoxImg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(alignment: .center)
                    NavigationLink(destination: PhotoSliderView()) {
                        Text("Next")
                            .bold()
                            .foregroundColor(.black)
                    }.buttonStyle(.borderedProminent)
                        .padding(.top,16)
                }
            }
        }.padding(16)
        
    }
}

struct JoyfulThingsView_Previews: PreviewProvider {
    static var previews: some View {
        JoyfulThingsView()
    }
}
