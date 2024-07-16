//
//  ContentView.swift
//  food-picker
//
//  Created by 孫定宇 on 2024/7/11.
//

import SwiftUI
import SwiftData



struct ContentView: View {
    let food=["漢堡", "沙拉", "披薩", "義大利麵", "雞腿便當", "刀削麵", "火鍋", "牛肉麵", "豬肉餃"]
   @State private var selectedFood: String?
   
    
    
    var body :some View{
        VStack(spacing:30){
            Image("dinner")
                .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

           
            
            
            
            Text("今天吃什麼？")
               
                .bold()
             
            if selectedFood != .none {
                Text(selectedFood ?? "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)
                    .transition(.scale.combined(with: .slide))
            }
            
            Button(role: .none){
                selectedFood = food.shuffled().filter{ $0 != selectedFood} .first
                }label: {
                    Text(selectedFood == .none ?
                         "告述我!":"換一個").frame(width: 200)
                        .animation(.none, value: selectedFood)
                        .transformEffect(.identity)
                }
                
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
            Button(role: .none){
                selectedFood = .none
                }label: {
                    Text("重置").frame(width: 200)
                }
                
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
            
          
            
            
        }
        .padding()
        .frame(maxHeight: .infinity)
        .background(Color(.secondarySystemBackground))
        .font(.title)

        .animation(.easeInOut(duration: 1), value :selectedFood )
        
    }
}
struct ContentView_previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
