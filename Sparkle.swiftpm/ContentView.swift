import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            Button("Plain Button") {
                NavigationLink(destination: TheProblemView()){}
            }.buttonStyle(.bordered)
            Text("The KonMari Method")
                .font(.largeTitle)
                .bold()
            Text("The KonMari Method is an personal organizational method to tidy up your home, created by Mari Kondo.").padding(.bottom,32)
            HStack{
                Color.black.frame(width: 2, height: 300 / UIScreen.main.scale)
                Text("\"The true purpose of tidying is not to cut down on your possessions or declutter your space. \nThe ultimate goal is to spark joy every day and lead a joyful life.\" \n\n- Marie Kondo")
            }.padding([.leading, .bottom, .trailing], 16.0)
            NavigationLink(destination: TheProblemView()){Text("Next")
                    .bold()
//                    .background(Color.yellow)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
                    .buttonStyle(.borderedProminent)
                //.border(Color.black)
                //.border(16)
            }.padding(16)
                .navigationTitle("The KonMari Method")
        }
    }
}
