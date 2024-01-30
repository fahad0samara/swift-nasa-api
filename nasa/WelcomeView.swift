//
//  WelcomeView.swift
//  nasa
//
//  Created by fahad samara on 1/30/24.
//

import SwiftUI

struct WelcomeView: View {
    @State var move = false
    var body: some View {
        NavigationStack{
            ZStack {
                GeometryReader { geometry in
                    Image("nasa0") // Replace with your space-themed image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth:10)
                    
                        .edgesIgnoringSafeArea(.all)
                }
                
                VStack {
                    Spacer()
                
                    
                    Text("Welcome to NASA Explorer")
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                        .background(Color.black.opacity(0.5)) // Semi-transparent black background
                        .cornerRadius(12)
                        .padding(.bottom, 2)
                    
                    Text("Explore the wonders of the universe with NASA's latest discoveries and breathtaking images.")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                        .background(Color.black.opacity(0.5)) // Semi-transparent black background
                        .cornerRadius(12)
                        .padding(.bottom, 2)
                    Button {
                        move.toggle()
                    } label: {
                        Text("Get Started")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .frame(width: 350)
                            .padding(.vertical, 14)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(red: 97/255, green: 16/255, blue: 60/255), Color(red: 153/255, green: 36/255, blue: 106/255)]), startPoint: .leading, endPoint: .trailing)).cornerRadius(30)
                    
                    
                    .padding(.bottom, 40)
                    }
                 
                    
                    
                }
            }.navigationDestination(isPresented:$move
                                )
            {
                Text("servve")
            }
            
        }
    }
}


#Preview {
    WelcomeView()
}
