//
//  MainApp.swift
//  App
//
//  Created by bulmang on 4/9/24.
//  Copyright © 2024 Mongle-iOS. All rights reserved.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
import OnBoardingFeature

@main
struct Mongle: App {
    init() {
        if let appKey = ProcessInfo.processInfo.environment["KAKAO_APP_KEY"] {
            KakaoSDK.initSDK(appKey: appKey)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
