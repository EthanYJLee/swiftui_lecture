//
//  ContentView.swift
//  Stacks_01
//
//  Created by 이영진 on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 헤더 생성
            HeaderView()
            HStack{
//                // Basic
//                VStack{
//                    Text("Basic")
//                        .font(.system(.title, design: .rounded))
//                        .fontWeight(.black)
//                        .foregroundColor(.white)
//                    Text("$9")
//                        .font(.system(size: 40,weight: .heavy))
//                        .foregroundColor(.white)
//
//                    Text("per month")
//                        .font(.headline)
//                        .fontWeight(.black)
//                        .foregroundColor(.white)
//
//                }
//                .padding(40)
//                // Color #1
//                .background(.purple)
//                .cornerRadius(30)
//                // 기종 변경시 보존해야 할 최소 비율
//                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 100)
                
//                // Pro
//                VStack{
//                    Text("Pro")
//                        .font(.system(.title, design: .rounded))
//                        .fontWeight(.black)
//                    Text("$19")
//                        .font(.system(size: 40,weight: .heavy))
//                    Text("per month")
//                        .font(.headline)
//                        .fontWeight(.black)
//                }
//                .padding(40)
//                // Color #2
//                .background(Color(red: 250/255, green: 190/255, blue: 240/255))
//                .cornerRadius(30)
//                // 기종 변경시 보존해야 할 최소 비율
//                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 100)
                
                // Pricing View 생성
                PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 250/255, green: 190/255, blue: 240/255))
            }
        }
        .padding()
    }
}

// Release시 사라짐
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // View
        ContentView()
    }
}

// Header View
struct HeaderView: View{
    var body: some View{
        // Stack의 괄호: Stack 전체 components들에 대해 적용되는 사항을 괄호 안에 작성
        VStack(alignment: .leading, spacing: 2){
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

// Pricing View
struct PricingView: View{
    var title:String
    var price:String
    var textColor:Color
    var bgColor:Color
    
    var body: some View{
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40,weight: .heavy))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .fontWeight(.black)
                .foregroundColor(textColor)
        }
        .padding(40)
        .background(bgColor)
        .cornerRadius(30)
        // 기종 변경시 보존해야 할 최소 비율
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 100)
    }
}

