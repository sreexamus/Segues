//
//  CustonSegue.swift
//  CustomSegues
//
//  Created by sreekanth reddy iragam reddy on 8/6/17.
//  Copyright © 2017 com.sree.objc. All rights reserved.
//

import UIKit

class CustonSegue: UIStoryboardSegue {
    
    override func perform() {
        animateTheView()
    }
    
    func animateTheView() {
        
        let toViewController = self.destination
        let fromViewController = self.source
        
        let container = fromViewController.view.superview
        
        let view = toViewController.view
        view?.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        view?.center = (container?.center)!
        container?.addSubview(view!)
        
        UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveEaseInOut, animations: {
            view?.transform = .identity
        }) { (success) in
            fromViewController.present(toViewController, animated: false, completion: nil)
        }
        
        
    }

}


class CustonUnwindSegue: UIStoryboardSegue {
    
    override func perform() {
        animateTheView()
    }
    
    func animateTheView() {
        
        let toViewController = self.destination
        let fromViewController = self.source
        

        fromViewController.view.superview?.insertSubview(toViewController.view, at: 0)
        
        UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveEaseInOut, animations: {
            fromViewController.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        }) { (success) in
            fromViewController.dismiss(animated: false, completion: nil)
        }
        
        
    }
    
}

