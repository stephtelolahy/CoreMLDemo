//
//  CameraType.swift
//  CoreMLDemo
//
//  Created by Hugues Stéphano TELOLAHY on 3/4/18.
//  Copyright © 2018 Hugues Stéphano TELOLAHY. All rights reserved.
//

import AVFoundation

enum CameraType : Int {
    case back
    case front
    
    func captureDevice() -> AVCaptureDevice {
        switch self {
        case .front:
            let devices = AVCaptureDevice.DiscoverySession(deviceTypes: [], mediaType: AVMediaType.video, position: .front).devices
            print("devices:\(devices)")
            for device in devices where device.position == .front {
                return device
            }
        default:
            break
        }
        return AVCaptureDevice.default(for: AVMediaType.video)!
    }
}

