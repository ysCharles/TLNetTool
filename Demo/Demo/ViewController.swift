//
//  ViewController.swift
//  Demo
//
//  Created by Charles on 2021/11/15.
//

import UIKit
import TLNetTool

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "首页"
        
        let imgView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        view.addSubview(imgView)
        
        imgView.setWebImage(urlString: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-1.jpg", placeHolder: nil, completionHandler: nil)
        
        testNetUtils()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK:- 网络工具测试
    func testNetUtils() {
        NetUtils.setAdapter(adapter: RequestHeaderAdapter(headers: ["token": "erqer34134f3fd1r13","name":"Charles","age":"31"]))
        //        NetUtils.getRequest(urlString: "https://httpbin.org/get", params:nil)
        NetUtils.getRequest(urlString: "https://httpbin.org/get", params: nil, success: { (response) in
            
            print(response)
        }, failure: { (msg) in
            print(msg)
        }, parameterType: .json)
        
        NetUtils.postRequest(urlString: "https://httpbin.org/post", params: nil, success: { (dic) in
            print(dic)
        }, failure: { (msg) in
            print(msg)
        },parameterType: .form)
    }

}

