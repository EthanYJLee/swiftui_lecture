//
//  ContentView.swift
//  Heart
//
//  Created by 이영진 on 2023/03/29.
//

import SwiftUI


struct ContentView: View {
    // 전역변수 선언 (색상, 사이즈를 바꾸기 위한)
    // 앱 실행 중에 바뀌는 것들은 @State로 처리
    @State var colorChange = false
    @State var sizeChange = false
    var body: some View {
        // VStack or HStack
        VStack {
            // Image
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? .yellow : .red)
                .scaleEffect(sizeChange ? 1.5 : 1)
            // State 변경 시 자연스러운 animation
                .animation(.easeInOut(duration: 1.0), value: sizeChange)
            // 탭 했을 때
                .onTapGesture {
                    // colorChange를 반전시킨다.
                    colorChange.toggle()
                }
            // 길게 눌렀을 때
                .onLongPressGesture {
                    sizeChange.toggle()
                }
            // Text
            Text("Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.green)
            // 정렬
                .multilineTextAlignment(.center)
                .padding()
            // 3D Effect
                .rotation3DEffect(.degrees(50), axis: (x: 1, y: 0, z: 0))
            // 그림자 효과
                .shadow(color: .gray, radius: 1, y: 20)
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
