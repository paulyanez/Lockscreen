//
//  ContentView.swift
//  LockScreen
//
//  Created by Paul Yanez on 6/2/23.
//

import SwiftUI

struct ContentView: View {
    private var gridLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: -10.0) {
                HStack(spacing: 4.0) {
                    Text("Mon 25")
                        .foregroundColor(Color(hex: 0xFDD9FF))
                    
                    Image(systemName: "cloud.moon.rain.fill")
                        .foregroundColor(Color(hex: 0xFDD9FF))
                    
                    Text(" 24°")
                        .foregroundColor(Color(hex: 0xFDD9FF))
                }
                
                Text("12:27")
                    .font(Font.custom("NewYorkExtraLarge-Heavy", size: 80, relativeTo: .largeTitle))
                    .foregroundColor(Color(hex: 0xFDD9FF))
            }
            
            Image("album-rose")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width - 40, height: 380)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: .black.opacity(0.2), radius: 100, x: 0, y: 30)
                
            
            VStack {
                VStack(spacing: 2) {
                    Text("On The Ground")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    
                    Text("ROSE - R - Single")
                        .font(.system(size: 15))
                        .foregroundColor(Color(hex: 0xFDD9FF).opacity(0.7))
                    
                    HStack(alignment: .center, spacing: 12.0) {
                        Text("0:48")
                            .font(.caption)
                            .foregroundColor(Color(hex: 0xFDD9FF).opacity(0.7))
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 4)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 100, height: 4)
                                .foregroundColor(.white)
                        }
                        
                        Text("-2:47")
                            .font(.caption)
                            .foregroundColor(Color(hex: 0xFDD9FF).opacity(0.7))
                    }
                    .padding(.top, 6)
                    
                    LazyVGrid(columns: gridLayout, spacing: 20)  {
                        Spacer()
                        
                        Image(systemName: "backward.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                        
                        Image(systemName: "pause.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 40))
                        
                        Image(systemName: "forward.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                        
                        
                        
                        Image(systemName: "beats.headphones")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding(.trailing, 8)
                        
                    }
                    .padding(.top, 8)
                    .padding(.bottom, 20)
                }
                .padding(.horizontal)
                .padding(.top, 16)
                .frame(width: UIScreen.main.bounds.width / 1.1)
                .background(Color(hex: 0x3E2F50))
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            }
            .padding(.top, 20)
            
            Spacer()
            
            HStack(spacing: 50.0) {
                Button(action: {
                    // place action to perform when button is tapped
                }) {
                    Image(systemName: "flashlight.off.fill")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 54, height: 54)
                        .background(Color(hex: 0x3E2F50).opacity(0.8))
                        .clipShape(Circle())
                }
                
                HStack {
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.white)
                    
                    Text("3 Notifications")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }
                
                Button(action: {
                    // place action to perform when button is tapped
                }) {
                    Image(systemName: "camera.fill")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 54, height: 54)
                        .background(Color(hex: 0x3E2F50).opacity(0.8))
                        .clipShape(Circle())

                }
            }
        }
        .padding(.top, 14)
        .background(
            Image("background-purple")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
