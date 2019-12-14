//
//  SecondController.swift
//  LessonSwiftDemo
//
//  Created by lanou3g on 15-1-7.
//  Copyright (c) 2015年 王军鑫. All rights reserved.
//

import UIKit

class SecondController: UIViewController,ImageDownFinish {
    var str: String?
    @IBOutlet weak var detaLab: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.detaLab.text = str!
        //初始化下载类
        var imageDownload = imageLoad()
        imageDownload.delegate = self
        //调用方法
        imageDownload.startRequestImageWithUrl(str!,finishBlock: {
        image ->() in
            self.imageView.image = image
        })
        
        // Do any additional setup after loading the view.
    }
    func downFinish(downImage: UIImage!) {
        self.imageView.image = downImage
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
