//
//  PugSecondViewController.swift
//  iKid
//
//  Created by stlp on 5/2/21.
//

import UIKit
import JellyGif
import SwiftGifOrigin

class PugSecondViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = JellyGifImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        imageView.startGif(with: .name("pug"))
//        imageView.image = UIImage.gif(name: "pug")
//        imageView.image = JellyGifImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//        let url = URL(string: "pug")!
//        //Animates Gif from the main bundle
//        imageView.startGif(with: .localPath(url))

//        imageView.animator
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
