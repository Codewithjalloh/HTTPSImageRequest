//
//  ViewController.swift
//  HTTPSImageRequest
//
//  Created by wealthyjalloh on 29/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/4/44/Balotelli_wears_the_2014_Italy_Home_Kit_02_(cropped).jpg")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) in
            
            if error == nil {
                let downloadImage = UIImage(data: data!)
                self.imageView.image = downloadImage
            }
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

