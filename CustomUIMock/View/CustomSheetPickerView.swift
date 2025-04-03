//
//  CustomSheetPickerView.swift
//  CustomUIMock
//
//  Created by 富澤明大 on 2025/04/02.
//

import SwiftUI

struct CustomSheetPickerView: View {
  @State private var isShowSheet = false
  
  var body: some View {
    VStack {
      Button("borderedPriominent", action: {
        isShowSheet.toggle()
      })
      .buttonStyle(.borderedProminent)
    }
    .sheet(isPresented:$isShowSheet) {
      SimplePickerSheet()
        .presentationDetents([.height(300)])
    }
  }
}

#Preview {
  CustomSheetPickerView()
}
