//
//  ViewController.swift
//  test-animation-swift
//
//  Created by 桑野友輔 on 2023/03/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
//        UIView.animate(withDuration: 1.0) {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            self.imageView.transform = CGAffineTransform.identity
//        }
//        UIView.animate(withDuration: 1.0, animations: {
//            self.imageView.transform = CGAffineTransform(translationX: 0, y: -100)
//        }) { (_) in
//            UIView.animate(withDuration: 1.0, animations: {
//                self.imageView.transform = CGAffineTransform.identity
//            })
//        }
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1, options: .curveLinear, animations: {
            self.imageView.transform = CGAffineTransform(translationX: 0, y: 100)
        }) { (_) in
            UIView.animate(withDuration: 1.0, animations: {
                self.imageView.transform = CGAffineTransform.identity
            })
        }
    }


}

