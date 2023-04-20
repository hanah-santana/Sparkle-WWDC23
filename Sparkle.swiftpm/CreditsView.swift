//
//  CreditsView.swift
//  Sparkle
//
//  Created by Hanah Santana on 19/04/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack{
            Image("Me")
                .resizable()
                //.frame(width: 200, height: 200)
                .clipShape(Circle())
                .aspectRatio(contentMode: .fit)
            Text("Hello, Everyone!")
            Text("My name is Hanah Santana, I'm brazilian, 22 years old and, yes, organization is essential in my life.")
            Text("✨")
                .padding(8)
            Text("I'm a Computer Engineer and Apple Developer Academy | IFCE student from Fortaleza, Ceará.")
            Text("Thank you so much for your time! I hope you enjoyed the little story and got inspired to try the organization method.")
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
