//
//  ContentView.swift
//  Image
//
//  Created by 이영진 on 2023/03/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        // Step 1: SF Symbols
//        Image(systemName: "cloud.heavyrain")
//            .font(.system(size: 100))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 5, y: 10)
        
//        // Step 2: 일반 Image
//        Image("paris")
//            // Safe Area에 맞춰 이미지 크기 조정
//            .resizable()
//            // Safe Area 무시
//            .edgesIgnoringSafeArea(.all)
//            // 아래 설정한 width 에 맞춰 height 비율 설정
//            .aspectRatio(contentMode: .fill)
//            // 크기 설정
//            .frame(width: 300)
//            .clipped()
            
            
//        // Step 3: 일반 Image Filtering
//        Image("paris")
//            // Safe Area에 맞춰 이미지 크기 조정
//            .resizable()
//            // Safe Area 무시
//            .edgesIgnoringSafeArea(.all)
//            // 아래 설정한 width 에 맞춰 height 비율 설정
//            .aspectRatio(contentMode: .fill)
//            // 크기 설정
//            .frame(width: 300)
//            .clipped()
//            // 이미지 모양대로 자르기
//            .clipShape(Capsule())
//            // 투명도
//            .opacity(0.5)
        
//        // Step 4: Overlay with SF Symbols
//        Image("paris")
//            // Safe Area에 맞춰 이미지 크기 조정
//            .resizable()
//            // Safe Area 무시
//            .edgesIgnoringSafeArea(.all)
//            // 아래 설정한 width 에 맞춰 height 비율 설정
//            .aspectRatio(contentMode: .fill)
//            // 크기 설정
//            .frame(width: 300)
//            .clipped()
//            // 이미지 모양대로 자르기
//            .clipShape(Circle())
//            // 투명도
//            .opacity(0.5)
//            .overlay(
//                Image(
//                    systemName:"heart.fill")
//                .font(.system(size:50))
//                .foregroundColor(.pink)
//                .opacity(0.5))
        
//        // Step 5: Overlay with Text
//        Image("paris")
//            // Safe Area에 맞춰 이미지 크기 조정
//            .resizable()
//            // 아래 설정한 width 에 맞춰 height 비율 설정
//            .aspectRatio(contentMode: .fit)
//            .overlay(
//                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveab le feast.\n\n- Ernest Hemingway")
//                    .fontWeight(.bold)
//                    .font(.system(.headline, design: .rounded))
//                    .foregroundColor(.white)
//                    // Font에 대한 padding
//                    .padding()
//                    .background(.black)
//                    .cornerRadius(30)
//                    .opacity(0.7)
//                    // overlay 범위의 padding
//                    .padding(),
//                // overlay의 위치 지정
//                alignment: .top
//            )
        
        // Step 6: Darken Image
        Image("paris")
            // Safe Area에 맞춰 이미지 크기 조정
            .resizable()
            // 아래 설정한 width 에 맞춰 height 비율 설정
            .aspectRatio(contentMode: .fit)
            .overlay(
                // overlay #1
                Rectangle()
                    .opacity(0.5)
                    .overlay(
                        // overlay #2
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                    )
                
            )
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
