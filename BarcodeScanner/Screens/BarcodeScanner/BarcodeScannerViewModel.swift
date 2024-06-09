//
//  BarcodeScannerModel.swift
//  BarcodeScanner
//
//  Created by 이종원 on 6/9/24.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?

    
    var statueText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
