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
    @State private var ball7PositionX: CGFloat = 0
    @State private var ball7PositionY: CGFloat = 0
    @State private var ball7Rotation: Double = 0.0
    @State private var spacechip1PositionX: CGFloat = -35
    @State private var spacechip1PositionY: CGFloat = -55
    @State private var heart1PositionX: CGFloat = 0
    @State private var heart1PositionY: CGFloat = 0
    @State private var heart1Dimention: CGFloat = 1.0
    @State private var player:AVAudioPlayer!
    
   
    let sound8 = Bundle.main.path(forResource: "Sad", ofType: "mp3")
    
    let sound9 = Bundle.main.path(forResource: "UFO", ofType: "mp3")

    let sound10 = Bundle.main.path(forResource: "aliens1", ofType: "mp3")
     
    
    
    
    
    var body: some View {
        
        GeometryReader { gp in
            
            ZStack (alignment: .bottomLeading) {
 
                
                Image(uiImage: UIImage(named: "Tavola_3")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                
                
                
                Group {
                
                Image(uiImage: UIImage(named: "scena33")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "Page1c")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 120, height: 100, alignment: .bottomLeading )
                    .offset(x:101, y: -640)
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                }
                
                Group {
                
                Image(uiImage: UIImage(named: "scene3_2x")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                 
                Image(uiImage: UIImage(named: "Page2c")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 120, height: 45, alignment: .bottomLeading )
                    .offset(x:312, y: -486)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                    
                }
                
                Image(uiImage: UIImage(named: "scene3_3x")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "Page3c")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 110, height: 137, alignment: .bottomLeading )
                    .offset(x:101, y: -78)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                
                
                
                Image(uiImage: UIImage(named: "ball7")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600,  alignment: .bottomLeading )
                    .rotationEffect(.degrees(ball7Rotation))
                    .offset(x:ball7PositionX , y:ball7PositionY )
                    .opacity(opacityOne)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "spaceship1")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset( x:spacechip1PositionX , y:spacechip1PositionY )
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                
                Image(uiImage: UIImage(named: "heart1")!)
                    .resizable()
                    .frame( width: 600, alignment: .bottomLeading )
                    .aspectRatio( contentMode: .fit)
                    .scaleEffect(heart1Dimention)
                    .offset(x:heart1PositionX, y:heart1PositionY)
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
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound8!))
                player.prepareToPlay()
                player.play()
                
                opacityOne = Double(1)
                ball7PositionX += -14
                ball7PositionY -= 0
                ball7Rotation += 8
                
                
                
                
            } else if (animation == 2) {
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound9!))
                player.prepareToPlay()
                player.play()
                
                opacityTwo = Double(1)
                spacechip1PositionX += 30
                spacechip1PositionY += 70
                
                
                
            } else if (animation == 3) {
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound10!))
                player.prepareToPlay()
                player.play()
                
                opacityThree = Double(1)
                heart1PositionX += -60
                heart1PositionY -= 150
                heart1Dimention += 0.7
                
            }
            
            animation += 1
            
        }
        
        
    }
    
    
}
PlaygroundPage.current.setLiveView(ContentView())






//: [Next](@next)
