//
//  imageLoad.swift
//  LessonSwiftDemo
//
//  Created by lanou3g on 15-1-7.
//  Copyright (c) 2015年 王军鑫. All rights reserved.
//

import UIKit

//创建一个Block
typealias DownloadFinish = (image: UIImage) ->()



//创建一个请求完成的协议
protocol ImageDownFinish : NSObjectProtocol {
    func downFinish(downImage: UIImage!)
    
}

public class imageLoad: NSObject {
    //声明一个代理
    var delegate :ImageDownFinish?
    //声明一个block属性
    var imageFinishBlock: DownloadFinish?
    
    
    //创建/查找本地图片的路径
    
    func startRequestImageWithUrl(imageurl: NSString, finishBlock:DownloadFinish) {
        //赋值
        self.imageFinishBlock = finishBlock
        //检查本地是否有图片
        var cachesimage = self.loadCaches(imageurl);
        //如果图片不存在
        if cachesimage == nil {
            //在子线程中去请求图片
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), { () -> Void in
                var imageData = NSData (contentsOfURL: NSURL(string: imageurl as String)!) as NSData!
                //将图片的Data 写入到沙盒中
                imageData.writeToFile(self.imageFilePath(imageurl),atomically:true)
                //请求完数据后回到主队列中
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    var image = UIImage(data: imageData)
                    //用代理进行回调传值
//                    if self.delegate != nil {
//                        self.delegate?.downFinish(image)
//                    }
                    self.imageFinishBlock!(image: image!)
                })
            })
        }else{
//            if self.delegate != nil {
//                self.delegate?.downFinish(cachesimage)
//            }
            //block传值
            self.imageFinishBlock!(image: cachesimage!)
        }
        
    }
    
    //加载本地图片
    func loadCaches(imageurl: NSString) ->UIImage? {
        //获取文件图片路径
        var filepath = self.imageFilePath(imageurl)
        //获取图片
        var image = UIImage (contentsOfFile: filepath) as UIImage?
        return image
    }
    
    //    创建并且获取图片沙盒路径
    func imageFilePath(imageUrl : NSString) -> String
    {
        //        找到caches文件夹
        var cachesPath: AnyObject? = (NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.CachesDirectory, NSSearchPathDomainMask.UserDomainMask, true) as NSArray).lastObject
        
        //        创建图片文件夹 初始化一个文件管理器
        var downloadImagesPath : String = cachesPath!.stringByAppendingPathComponent("DownloadImages")
        var fileManager = NSFileManager.defaultManager()
        
        //        判断是否存在 如果不存在创建
        if (!fileManager.fileExistsAtPath(downloadImagesPath))
        {
            fileManager.createDirectoryAtPath(downloadImagesPath, withIntermediateDirectories: true, attributes: nil, error: nil)
            
        }
        
        //        将url中的 / 转成 _
        var imageName = imageUrl.stringByReplacingOccurrencesOfString("/", withString: "_")
        var imageFilePath = downloadImagesPath.stringByAppendingPathComponent(imageName) as NSString;
        return imageFilePath as String
    }
   
    
}
