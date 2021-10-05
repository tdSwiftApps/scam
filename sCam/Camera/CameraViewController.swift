//
//  CameraViewController.swift
//  sCam
//
//  Created by 道関孝行 on 2021/10/05.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    let cameraModel = CameraModel()
    
    // カメラアイテム
    private var input: AVCaptureDeviceInput!
    private var output: AVCaptureVideoDataOutput!
    private var session: AVCaptureSession!
    private var camera: AVCaptureDevice!
    private var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    
    override func loadView() {
        self.view = CameraView(model: cameraModel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        // セッションを終了してメモリを開放する
        session.stopRunning()
        // アウトプット
        for output in session.outputs {
            session.removeOutput(output as AVCaptureOutput)
        }
        // インプット
        for input in session.inputs {
            session.removeInput(input as AVCaptureInput)
        }
    }
    
    /**
     * parameter none
     * return none
     * カメラの設定
     */
    private func setupCamera() {
        // キャプチャに関する入力管理
        session = AVCaptureSession()
        // キャプチャ・クオリティの設定
        session.sessionPreset = .photo
        // カメラデバイスのプロパティ設定
        if let availableDevice = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: AVMediaType.video, position: .back).devices.first {
            camera = availableDevice
        }
        // カメラからの入力データ
        do {
            input = try AVCaptureDeviceInput(device: camera) as AVCaptureDeviceInput
        } catch let error as NSError {
            print(error)
        }
        // 入力をセッションにに追加
        if (session.canAddInput(input)) {
            session.addInput(input)
        }
        // フレームデータを出力に設定
        output = AVCaptureVideoDataOutput()
        // 出力をセッションに追加
        if (session.canAddOutput(output)) {
            session.addOutput(output)
        }
        // ピクセルフォーマットを32bit RGB+Aとする
        output.videoSettings = [kCVPixelBufferPixelFormatTypeKey as AnyHashable as! String: Int(kCVPixelFormatType_32BGRA)]
        // プレーむをキャプチャするためのサブスレッド用のシリアルキューを用意
        output.setSampleBufferDelegate(self, queue: DispatchQueue.main)
        
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: session)
        videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        videoPreviewLayer?.frame = view.layer.bounds
        self.view.layer.addSublayer(videoPreviewLayer!)
        output.alwaysDiscardsLateVideoFrames = true
        
        // セッションの開始
        session.startRunning()
        // デバイスをロックして設定
        do {
            try camera.lockForConfiguration()
            // フレームレート
            camera.activeVideoMinFrameDuration = CMTimeMake(value: 1, timescale: 30)
            camera.unlockForConfiguration()
        } catch _ {
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
