//
//  NativeViewFactory.swift
//  Runner
//
//  Created by Rohit Nisal on 12/24/18.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

import Foundation

class NativeViewFactory : NSObject, FlutterPlatformViewFactory {
    
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return NativeView(frame, viewId:viewId, args:args)
    }
}

public class NativeView : NSObject, FlutterPlatformView {
    
    let frame : CGRect
    let viewId : Int64
    
    init(_ frame:CGRect, viewId:Int64, args: Any?){
        self.frame = frame
        self.viewId = viewId
    }
    
    public func view() -> UIView {
        let view : UIView = UIView(frame: self.frame)
        view.backgroundColor = UIColor.lightGray
        return view
    }
    
}
