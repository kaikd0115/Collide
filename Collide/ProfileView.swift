//
//  ProfileView.swift
//  Collide
//
//  Created by Kodama Kai on 2024/10/30.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            
            Image(systemName: "person.circle.fill")
                .resizable()
            frame(width: 120, height: 120)
            Text("Username")
                .font(.largeTitle)
            
            List{
                Section("現在の目標"){
                   Text("走る")
                }
                VStack{
                    Text("達成度")
                    ZStack{
                        Image(systemName: "circle.ill")
                            .resizable()
                            .frame(width: 180, height: 180)
                        
                        Text("36%")
                            .font(.system(size: 40))
                            .foregroundStyle(.white)
                    }
                }
               
            }
            
        }
    }
}

#Preview {
    ProfileView()
}
