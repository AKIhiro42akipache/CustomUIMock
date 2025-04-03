//
//  CustomSheetPickerView.swift
//  CustomUIMock
//
//  Created by 富澤明大 on 2025/04/02.
//

import SwiftUI

struct SimplePickerSheet: View {
  @State private var selectionValue = 3
  
  var body: some View {
    ZStack {
      // メインコンテンツ
      VStack(spacing: 16) {
        Text("カスタムPickerです")
          .font(.title2)
          .foregroundStyle(.black)
          .padding(.top, 20)
        
        // Pickerを配置（特別な処理なし）
        Picker("フルーツを選択", selection: $selectionValue) {
          Text("みかん").tag(1)
          Text("ぶどう").tag(2)
          Text("りんご").tag(3)
          Text("バナナ").tag(4)
          Text("もも").tag(5)
        }
        .pickerStyle(.wheel)
        .frame(height: 150)
        
        Spacer()
      }
      .padding()
      
      // 透明なオーバーレイ（Picker領域を除外）
      VStack {
        // 上部の透明なオーバーレイ
        Rectangle()
          .fill(Color.white.opacity(0.001))
          .frame(height: 70) // ヘッダー部分の高さ
          .highPriorityGesture(DragGesture(minimumDistance: 0))
        
        // Pickerの領域は空ける
        Spacer().frame(height: 150) // Pickerと同じ高さ
        
        // 下部の透明なオーバーレイ
        Rectangle()
          .fill(Color.white.opacity(0.001))
          .frame(maxHeight: .infinity)
          .highPriorityGesture(DragGesture(minimumDistance: 0))
      }
    }
  }
}

#Preview {
  CustomSheetPickerView()
}
