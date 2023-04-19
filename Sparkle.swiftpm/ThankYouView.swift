//
//  ThankYouView.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI

struct ThankYouView: View {
    var body: some View{
        VStack{
            Text("Thank you for your help!")
                .font(.title)
            //Spacer()
            Text("She gave space for things that matter, her house has spots with things that sparkle joy and bring good memories to her.")
            Image("nonJoyfulHouseImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("joyfulHouseImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("And this made her feel happier, calmer and motivated.")
            Text("This method can be life changing for those who apply in their lives, not only in the organizational aspect.")
            Text("I also suggest you to give it a try! 😉")
        }.padding(16)
    }
}

struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
    }
}
