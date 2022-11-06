//
//  ContentView.swift
//  Weather-App
//
//  Created by Prakhar Parakh on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack{
                LinearGradient(colors: [.blue,.white], startPoint:.topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Chennai, TN")
                        .font(.system(size: 35,weight: .semibold,design: .default))
                        .foregroundColor(.white)
                        .padding()
                    VStack{
                        Image(systemName:  "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                            .padding(.top)
                        Text("35°")
                            .font(.system(size: 35,weight: .medium))
                            .foregroundColor(.white)
                        
                    }
                    Spacer()
                    HStack{
                        ExtractedView(day: "mo", img: "cloud.sun.fill", temp: "2°")
                        ExtractedView(day: "mo", img: "cloud.sun.fill", temp: "2°")
                        ExtractedView(day: "mo", img: "cloud.sun.fill", temp: "2°")
                        ExtractedView(day: "mo", img: "cloud.sun.fill", temp: "2°")
                        ExtractedView(day: "mo", img: "cloud.sun.fill", temp: "2°")
                    }
                    
                    
                    Spacer()

                }
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var day: String
    var img: String
    var temp: String
    var body: some View {
        HStack{
            VStack{
                Text(day)
                    .font(.system(size: 15,weight: .medium))
                    .foregroundColor(.black)
                Image(systemName: img)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                Text(temp)
                
            }
        }
    }
}
