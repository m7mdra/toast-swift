//
//  ViewController.swift
//  example
//
//  Created by LaBaih on 19/10/2023.
//

import UIKit
import Toast
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ConstrainedToastViewConfiguration())
        print(FreeFormToastViewConfiguration())
        
    }
    
    @IBAction func showDynamicIcon(_ sender: Any) {
        Toast.default(
            image: UIImage(systemName: "airpodspro")!,
            title: "Airpods Pro",
            subtitle: "If you want to rename the initializer method to match the parameter names you provided, you can update the method signature accordingly. Here's how you can modify the initializer method to match the parameter names", 
            viewConfig: FreeFormToastViewConfiguration()
        ).show()
    }
    
    @IBAction func showDynamicText(_ sender: Any) {
        Toast.text("Hello...",
                   subtitle: "If you want to rename the initializer method to match the parameter names you provided, you can update the method signature accordingly. Here's how you can modify the initializer method to match the parameter names:",
                   viewConfig: FreeFormToastViewConfiguration(),
                   config: ToastConfiguration(direction: .top, dismissBy: [.tap, .time(time: 10)],attachTo: view))
        .show(haptic: .warning)
    }
    
    @IBAction func showIconToast(_ sender: Any) {
         Toast.default(
            image: UIImage(systemName: "airpodspro")!,
            title: "Airpods Pro",
            subtitle: "If you want to rename the initializer method to match the parameter names you provided, you can update the method signature accordingly. Here's how you can modify the initializer method to match the parameter names",
            viewConfig: ConstrainedToastViewConfiguration()
        ).show()
    }
    
    @IBAction func showToast(_ sender: Any) {
        Toast.text("Hello...",
                   subtitle: "If you want to rename the initializer method to match the parameter names you provided, you can update the method signature accordingly. Here's how you can modify the initializer method to match the parameter names:", viewConfig: ConstrainedToastViewConfiguration(),
                   config: ToastConfiguration(direction: .top, dismissBy: [.tap, .time(time: 10)],attachTo: view))
        .show(haptic: .warning)
    }
    
}

