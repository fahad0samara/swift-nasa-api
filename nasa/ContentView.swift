//
//  ContentView.swift
//  nasa
//
//  Created by fahad samara on 1/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("nasa") // Replace with your space-themed image
                .resizable().scaledToFill()
              
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("Welcome to NASA Explorer")
                    .font(.system(size: 48, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .background(Color.black.opacity(0.5)) // Semi-transparent black background
                    .cornerRadius(12)
                    .padding(.bottom, 8)
                
                Text("Explore the wonders of the universe with NASA's latest discoveries and breathtaking images.")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .background(Color.black.opacity(0.5)) // Semi-transparent black background
                    .cornerRadius(12)
                    .padding(.bottom, 20)
                
              
                    Text("Get Started")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.white)
                        .frame(width: 300)
                        .padding(.vertical, 16)
                        .background(Color.red) // You can use a space-themed color
                        .cornerRadius(12)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 50)
                
            
        }
    }
}
#Preview {
    ContentView()
}
