//: [Previous](@previous)
import Foundation
import UIKit
import PlaygroundSupport
import SwiftUI
import CoreGraphics

struct ContentView: View {
    
    @State private var opacityOne: Double = 0
    @State private var opacityTwo: Double = 0
    @State private var opacityThree: Double = 0
    @State private var animation = 1
    @State private var ball4PositionX: CGFloat = -100
    @State private var ball4PositionY: CGFloat = 0
    @State private var ball5rotation: Double = 0.0
    @State private var ball5PositionX: CGFloat = 0
    @State private var ball5PositionY: CGFloat = 0
    @State private var ball6PositionX: CGFloat = 360
    @State private var ball6PositionY: CGFloat = -130
    @State private var ball6Dimention: CGFloat = 3.0
    
    
    
    
    var body: some View {
        
//        GeometryReader { gp in
            
            ZStack (alignment: .bottomLeading) {
                
                Image(uiImage: UIImage(named: "Tavola_2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                
               
                    
                Group {
                    
                    Image(uiImage: UIImage(named: "scena2_1")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame( width: 600, alignment: .bottomLeading )
                        .offset(x:0, y: -0)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Page1b")!)
                        .resizable()
                        .frame( width: 130, height: 86, alignment: .bottomLeading )
                        .offset(x:98, y: -650)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                }
                
               
                
                
                Group {
                
                Image(uiImage: UIImage(named: "scena2_2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                    
                    Image(uiImage: UIImage(named: "Page2b")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame( width: 85, height: 65, alignment: .bottomLeading )
                        .offset(x:398, y: -470)
                        .opacity(opacityTwo)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                }
                
                Group {
                Image(uiImage: UIImage(named: "scena2_3")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "Page3b")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 130, height: 60, alignment: .bottomLeading )
                    .offset(x:120, y: -80)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                }
                
                
                Image(uiImage: UIImage(named: "ball4")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:ball4PositionX , y:ball4PositionY )
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "ball5")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .rotationEffect(.degrees(ball5rotation))
                    .offset( x:ball5PositionX , y:ball5PositionY )
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "ball6")!)
                    .resizable()
                    .frame( width: 50, height: 51, alignment: .bottomLeading )
                    .aspectRatio( contentMode: .fit)
                    .scaleEffect(ball6Dimention)
                    .offset(x:ball6PositionX, y:ball6PositionY)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1.5)
                    )
                
                
                
               
            }
            .frame(width: 600, height: 800)
            
            
//        }
//        .frame(width: 600, height: 800)
        .onTapGesture {
            if(animation == 1){
                
                
                opacityOne = Double(1)
                ball4PositionX += 110
                ball4PositionY -= 20
                

                
                
            } else if (animation == 2) {
                opacityTwo = Double(1)
                ball5PositionX += 30
                ball5PositionY -= 10
                ball5rotation += 5
                
                
                
                
            } else if (animation == 3) {
                opacityThree = Double(1)
                ball6PositionX += 50
                ball6PositionY += 80
                ball6Dimention -= 3.0
                
            }
            
            animation += 1
            
        }
        
        
    }
    
    
}
PlaygroundPage.current.setLiveView(ContentView())




//: [Next](@next)
