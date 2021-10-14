//: [Previous](@previous)

import Foundation
import UIKit
import PlaygroundSupport
import SwiftUI
import CoreGraphics
import AVKit

struct ContentView: View {
    
    @State private var opacityOne: Double = 0
    @State private var opacityTwo: Double = 0
    @State private var opacityThree: Double = 0
    @State private var animation = 1
    @State private var spaceship2PositionX: CGFloat = -12
    @State private var spaceship2PositionY: CGFloat = -175
    @State private var spaceship2Dimention: CGFloat = 0.0
    @State private var heart2PositionX: CGFloat = 0
    @State private var heart2PositionY: CGFloat = 0
    @State private var heart2Dimention: CGFloat = 1.0
    @State private var heart1PositionX: CGFloat = 0
    @State private var heart1PositionY: CGFloat = 0
    @State private var ball8rotation: Double = 0.0
    @State private var ball9rotation: Double = 0.0
    @State private var player:AVAudioPlayer!
    
    let sound11 = Bundle.main.path(forResource: "UFO2", ofType: "mp3")
    let sound12 = Bundle.main.path(forResource: "HappyEnding", ofType: "mp3")
 
    
    
    
    
    
    
    var body: some View {
        
        GeometryReader { gp in
            
            ZStack (alignment: .bottomLeading) {
 
                
                Image(uiImage: UIImage(named: "Tavola_4")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                
                
                
                Group {
                
                Image(uiImage: UIImage(named: "scena4_1")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                    
                    Image(uiImage: UIImage(named: "Page1d2")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 130, height: 69, alignment: .bottomLeading )
                        .offset(x:355, y: -672)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                }
                
                Group {
                    
                
                Image(uiImage: UIImage(named: "scena4_2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "Page2d")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 95, height: 62, alignment: .bottomLeading )
                    .offset(x:390, y: -575)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "Page3d")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 140, height: 86, alignment: .bottomLeading )
                    .offset(x:105, y: -165)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                 
                }
                    
                Image(uiImage: UIImage(named: "scena4_3")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                
                
                Image(uiImage: UIImage(named: "spaceship2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600,  alignment: .bottomLeading )
                    .scaleEffect(spaceship2Dimention)
                    .offset(x:spaceship2PositionX , y:spaceship2PositionY )
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "heart2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .scaleEffect(heart2Dimention)
                    .offset( x:heart2PositionX , y:heart2PositionY )
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "ball9")!)
                    .resizable()
                    .frame( width: 600, alignment: .bottomLeading )
                    .aspectRatio( contentMode: .fit)
                    .rotationEffect(.degrees(ball9rotation))
                    .offset(x:0, y:0 )
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "ball8")!)
                    .resizable()
                    .frame( width: 600, alignment: .bottomLeading )
                    .aspectRatio( contentMode: .fit)
                    .rotationEffect(.degrees(ball8rotation))
                    .offset(x:heart1PositionX, y:heart1PositionY)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                
                Image(uiImage: UIImage(named: "Page4d")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 100, height: 48, alignment: .bottomLeading )
                    .offset(x:130, y: -60)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                
                
                
            }
            .frame(width: 600, height: 800)
            
            
        }
        .frame(width: 600, height: 800)
        .onTapGesture {
            if(animation == 1){
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound11!))
                
                player.prepareToPlay()
                player.play()
                
                
                opacityOne = Double(1)
                spaceship2PositionX += -25
                spaceship2PositionY +=  160
                spaceship2Dimention += 0.9
               
                
                
                
                
            } else if (animation == 2) {
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound12!))
                player.prepareToPlay()
                player.play()
                
                opacityTwo = Double(1)
                heart2PositionX += 0
                heart2PositionY += -10
                heart2Dimention += 0.2
                ball9rotation += 2.0
                
                
                
            } else if (animation == 3) {
                
                
                opacityThree = Double(1)
                heart1PositionX += -110
                heart1PositionY += 42
                ball8rotation -= 20
                
                
            }
            
            animation += 1
            
        }
        
        
    }
    
    
}
PlaygroundPage.current.setLiveView(ContentView())

//: [Next](@next)
