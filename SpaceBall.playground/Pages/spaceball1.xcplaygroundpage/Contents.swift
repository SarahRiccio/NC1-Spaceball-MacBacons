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
    @State private var opacityFour: Double = 0
    @State private var opacityText: Double = 1
    @State private var animation = 1
    @State private var ball1Position: CGFloat = 295
    @State private var ball1rotation: Double = 0.0
    @State private var eyebrowsPosition: CGFloat = -383
    @State private var ball2PositionX: CGFloat = 210
    @State private var ball2PositionY: CGFloat = -190
    @State private var ball2Dimention: CGFloat = 1.0
    @State private var ball3PositionX: CGFloat = 320
    @State private var ball3PositionY: CGFloat = -100
    @State private var ball3Dimention: CGFloat = 2.0
    @State private var player:AVAudioPlayer!
    
    let sound1 = Bundle.main.path(forResource: "giocano-calcio", ofType: "mp3")
    let sound2 = Bundle.main.path(forResource: "Suono-palleggi", ofType: "mp3")
    let sound3 = Bundle.main.path(forResource: "Suono-calcio", ofType: "mp3")
    let sound4 = Bundle.main.path(forResource: "Suono-Vento", ofType: "mp3")
                    
    
    
    var body: some View {
        
        GeometryReader { gp in
            
            ZStack (alignment: .bottomLeading) {
                
                Image(uiImage: UIImage(named: "Tavola_1")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                
                Text("Click anywhere to continue")
                    .multilineTextAlignment(.center)
                    .font(Font.custom("Action_Man", size:16))
                    .opacity(opacityText)
                    .offset(x:189, y: -778)
                    
                    
                Group {
                    Image(uiImage: UIImage(named: "Tavola_1Bis")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame( width: 600, alignment: .bottomLeading )
                        .offset(x:0, y: -0)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Ball1")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame( width: 60, height: 63, alignment: .bottomLeading )
                        .rotationEffect(.degrees(ball1rotation))
                        .offset(x:ball1Position , y: -509)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Page1a")!)
                        .resizable()
                        .frame( width: 100, height: 91, alignment: .bottomLeading )
                        .offset(x:96, y: -650)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                }
                
               
                
                Group {
                
                Image(uiImage: UIImage(named: "2")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityTwo)
                    .animation(
                        .linear(duration: 1)
                    )
                    
                    Image(uiImage: UIImage(named: "eyebrows")!)
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame( width: 60, alignment: .bottomLeading )
                        .offset(x:218, y:eyebrowsPosition )
                    
                        .opacity(opacityTwo)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Page2a")!)
                        .resizable()
                        .frame( width: 88, height: 54, alignment: .bottomLeading )
                        .offset(x:406, y: -518)
                        .opacity(opacityOne)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                }
                    
                Group {
                    
                Image(uiImage: UIImage(named: "3")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 600, alignment: .bottomLeading )
                    .offset(x:0, y: -0)
                    .opacity(opacityThree)
                    .animation(
                        .linear(duration: 1)
                    )
                    
                    Image(uiImage: UIImage(named: "ball2")!)
                        .resizable()
                        .frame( width: 80, height: 60, alignment: .bottomLeading )
                        .aspectRatio( contentMode: .fit)
                        .scaleEffect(ball2Dimention)
                        .offset(x:ball2PositionX, y:ball2PositionY)
                        .opacity(opacityThree)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Page3a")!)
                        .resizable()
                        .frame( width: 150, height: 42, alignment: .bottomLeading )
                        .offset(x:334, y: -375)
                        .opacity(opacityTwo)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                    Image(uiImage: UIImage(named: "Page4a")!)
                        .resizable()
                        .frame( width: 100, height: 54, alignment: .bottomLeading )
                        .offset(x:100, y: -42)
                        .opacity(opacityThree)
                        .animation(
                            .linear(duration: 1)
                        )
                    
                }
                    
                    
                
                Image(uiImage: UIImage(named: "4")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 590, alignment: .bottomLeading )
                    .offset(x:7, y: -2)
                    .opacity(opacityFour)
                    .animation(
                        .linear(duration: 1)
                    )
                
                
                
                Image(uiImage: UIImage(named: "ball3")!)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame( width: 60, height: 52, alignment: .bottomLeading )
                    .scaleEffect(ball3Dimention)
                    .offset(x:ball3PositionX, y:ball3PositionY)
                    .opacity(opacityFour)
                    .animation(
                        .linear(duration: 1.5)
                    )
                
                
                
                /* Image(uiImage: UIImage(named: "Icone")!)
                 .resizable()
                 .aspectRatio( contentMode: .fit)
                 .frame( width: 50, alignment: .bottomLeading )
                 .offset(x:430, y: 0)
                 .gesture(<#T##gesture: Gesture##Gesture#>)*/
                
            }
            .frame(width: 600, height: 800)
            
            
        }
        .frame(width: 600, height: 800)
        .onTapGesture {
            if(animation == 1){
                
                
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound1!))
                player.prepareToPlay()
                player.play()
                
                opacityOne = Double(1)
                ball1Position += -20
                ball1rotation -= 20
                opacityText = Double (0)
               
                
            } else if (animation == 2) {
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound2!))
                player.prepareToPlay()
                player.play()
                 
                opacityTwo = Double(1)
                eyebrowsPosition += -9
                
                
                
            } else if (animation == 3) {
                
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound3!))
                player.prepareToPlay()
                player.play()
                
                opacityThree = Double(1)
                ball2PositionX += 160
                ball2PositionY -= 60
                ball2Dimention += 1.5
                
                
                
            } else if (animation == 4) {
                
                player.stop()
                
               
                player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound4!))
                player.prepareToPlay()
                player.play()
                
                opacityFour = Double(1)
                ball3PositionX += 280
                ball3PositionY -= 100
                ball3Dimention -= 1.0
                
            }
            
            animation += 1
            
        }
        
        
    }
    
    
}
PlaygroundPage.current.setLiveView(ContentView())

//: [Next](@next)
