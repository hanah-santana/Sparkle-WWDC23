//
//  UseMethodView.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI
struct UseMethodView: View {
    @State private var steps = 1.0
    var body: some View {
        VStack{
            Text("Then, she decided to use the KonMari Method of organization. She started imaginating the life that she want to have and went for it.")
            Text("Now, we need to help her, following the KonMari Method, so she can reduce things to the essentials, things that sparks joy to her.")
            imgName
            Text("Slide to help with the decluttering")
            VStack{
                Slider(value: $steps,
                       in: 1...5,
                       step: 1,
                       minimumValueLabel: Text("1"),
                       maximumValueLabel: Text("5"),
                       label: { Text("Steps") }
                )
            }.padding(80)
            
            NavigationStack{
                NavigationLink(destination: JoyfulThingsView()) {Text("Next")}
            }.navigationTitle("Using The KonMari Method")
        }.padding(16)
    }
    @ViewBuilder
    var imgName: some View {
        switch steps{
        case 1.0:
            imagePlacer(image: "Slider1")
            Text("She gathered all her clothes together, and kept with her only those that sparks joy.")
        case 2.0:
            imagePlacer(image: "Slider2")
            Text("She did the same thing with books.")
        case 3.0:
            imagePlacer(image: "Slider3")
            Text("Then with papers.")
        case 4.0:
            imagePlacer(image: "Slider4")
            Text("With Komono, that are understood by us as miscellaneous.")
        case 5.0:
            imagePlacer(image: "Slider5")
            Text("And, finally, with the sentimental items.")
        default:
            Image("circle.fill")
                
        }
    }
    func imagePlacer(image: String) -> some View{
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct UseMethodView_Previews: PreviewProvider {
    static var previews: some View {
        UseMethodView()
    }
}
