//
//  ViewController.swift
//  Sound
//
//  Created by 鈴木ましろ on 2022/04/25.
//

// iOSおよびtvOS Appの構築に必要な中核オブジェクトを提供する
import UIKit
// 静止画・音声・動画などのメディアの作成・再生・編集を行うことの出来るフレームワーク
import AVFoundation

class ViewController: UIViewController {
    
    // ドラムを表示させる箱（変数: 定数と違って何度も代入可能）
    // !はnil(null)を許すという意味
    @IBOutlet var drumButtun: UIButton!
    // ピアノを表示させる箱
    @IBOutlet var pianoButtun: UIButton!
    // ギターを表示させる箱
    @IBOutlet var guitarButtun: UIButton!
    
    // NSDataAssetからdrumSoundを読み込んで、drumSoundPlayerというプレイヤーを作成（定数: 一度しか代入できない）
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    // ピアノのサウンドファイルを読み込み、プレーヤーを作成
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    // ギターのサウンドファイルを読み込み、プレーヤーを作成
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // touchDownDrumButtonというボタンが押される時に実行
    // TouchDownは、指が触れたときに。Touch Down Insideは、指が離れたときに。
    @IBAction func touchDownDrumButton(){
        // 指が触れたときに画像を変える
        drumButtun.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        // 連続してタップされた場合に、音楽ファイルの再生時間を最初の0に戻す設定
        // この設定を一番上に書くと連続してタップされた時に、再生が終わる前に最初から再生される
        drumSoundPlayer.currentTime = 0
        // 上で書いたdrumSoundPlayerを再生
        drumSoundPlayer.play()
    }
    // touchDownDrumButtonというボタンが押される時に実行
    @IBAction func touchUpDrumButton(){
        // 指が触れたときに画像を変える
        drumButtun.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    
    // ピアノの音を鳴らす
    @IBAction func touchDownPianoButtun(){
        // 指が触れたときに画像を変える
        pianoButtun.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        // 連続してタップされた場合に、音楽ファイルの再生時間を最初の0に戻す設定
        pianoSoundPlayer.currentTime = 0
        //ピアノの音を再生
        pianoSoundPlayer.play()
    }
    @IBAction func touchUpPianoButton(){
        // 指が触れたときに画像を変える
        pianoButtun.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    
    // ギターの音を鳴らす
    @IBAction func touchDownGuitarButtun(){
        // 指が触れたときに画像を変える
        guitarButtun.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        // 連続してタップされた場合に、音楽ファイルの再生時間を最初の0に戻す設定
        guitarSoundPlayer.currentTime = 0
        //ギターの音を再生
        guitarSoundPlayer.play()
    }
    @IBAction func touchUpGuitarButton(){
        // 指が触れたときに画像を変える
        guitarButtun.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
}
