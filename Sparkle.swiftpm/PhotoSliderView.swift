//
//  PhotoSliderWiew.swift
//  Sparkle
//
//  Created by Hanah Santana on 17/04/23.
//

import SwiftUI

public struct PhotoSliderView: View {
    public init() { }
    public var body: some View {
        NavigationStack{
            VStack(){
                Text("She gave space for things that matter, her house has spots with things that sparkle joy and bring good memories to her.")
                Text("Use the slider in the photo to see the difference.✨")
                PhotoSlider()
                Text("This method can be lifechanging! I suggest you to give it a try. 😉")
            }
            HStack{
                
                NavigationLink(destination: ContentView()){
                    Text("Restart")
                }.buttonStyle(.borderedProminent)
                    .padding(.horizontal,8)
                NavigationLink(destination: CreditsView()){
                    Text("Credits")
                }.buttonStyle(.borderless)
                    .padding(.horizontal,8)
            }
        }.navigationTitle("Thank you for your help!")
            .padding(16)
    }
}

fileprivate struct PhotoSlider: View {
    @State private var dividingWidth: CGFloat
    private var sliderSize = CGSize(width: 800, height: 400)
    
    init() {
        dividingWidth = sliderSize.width / 2
    }
    
    var body: some View {
        ZStack {
            HStack {
                let imageWidth = dividingWidth
                
                ImageForSlider(Image("nonJoyfulHouseImg"), size: sliderSize)
                    .foregroundStyle(Color.gray, Color.teal)
                    .frame(width: imageWidth, alignment: .leading)
                    .clipped()
                
                Spacer()
                    .frame(width: sliderSize.width - imageWidth)
            }
            
            HStack {
                let imageWidth = sliderSize.width - dividingWidth
                
                Spacer()
                    .frame(width: sliderSize.width - imageWidth)
                
                ImageForSlider(Image("joyfulHouseImg"), size: sliderSize)
                    .foregroundStyle(Color.cyan, Color.orange)
                    .frame(width: imageWidth, alignment: .trailing)
                    .clipped()
            }
            
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 5)
            .stroke()
        )
        .overlay(SlideBar(slideLocation: $dividingWidth, range: 0...sliderSize.width))
    }
}

fileprivate struct SlideBar: View {
    @Binding var slideLocation: CGFloat
    let range: ClosedRange<CGFloat>
    @State private var dragStartValue: CGFloat? = nil
    
    private var rangeMiddle: CGFloat {
        ((range.upperBound - range.lowerBound) / 2) + range.lowerBound
    }
    
    private var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                if dragStartValue == nil {
                    dragStartValue = slideLocation
                }
        
                slideLocation = max(range.lowerBound,
                                    min(range.upperBound, dragStartValue! + value.translation.width))
            }
            .onEnded { _ in
                dragStartValue = nil
            }
    }
    
    var body: some View {
        ZStack {
            VerticalLine()
                .stroke(lineWidth: 2)
                .shadow(radius: 3.0)
            
            SlideControlShape()
                .stroke()
                .frame(width: 10, height: 20)
                .shadow(radius: 3.0)
                .background(SlideControlShape().fill(.background))
        }
        .offset(x: slideLocation - rangeMiddle)
        .gesture(dragGesture)
    }
}

fileprivate struct SlideControlShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 2.0, height: 3.0))
        
        let widthFourth = rect.width / 4
        let heightSixth = rect.height / 6
        
        path.move(to: CGPoint(x: widthFourth, y: heightSixth))
        path.addLine(to: CGPoint(x: widthFourth, y: 5 * heightSixth))
        
        path.move(to: CGPoint(x: 2 * widthFourth, y: heightSixth))
        path.addLine(to: CGPoint(x: 2 * widthFourth, y: 5 * heightSixth))
        
        path.move(to: CGPoint(x: 3 * widthFourth, y: heightSixth))
        path.addLine(to: CGPoint(x: 3 * widthFourth, y: 5 * heightSixth))
        
        return path
    }
}

fileprivate struct VerticalLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.width / 2, y: 0))
        path.addLine(to: CGPoint(x: rect.width / 2, y: rect.height))
        
        return path
    }
}

fileprivate struct ImageForSlider: View {
    let image: Image
    let size: CGSize
    
    init(_ image: Image, size: CGSize) {
        self.image = image
        self.size = size
    }
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: size.width, height: size.height)
            .symbolRenderingMode(.palette)
            .fixedSize()
    }
}

struct P276_ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        PhotoSliderView()
    }
}

