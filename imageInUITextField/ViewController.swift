//
//  ViewController.swift
//  imageInUITextField
//
//  Created by Engy on 11/6/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTx: UITextField!
    @IBOutlet weak var paswordTx: UITextField!
    @IBOutlet weak var emailTx: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        nameTx.setupLeftImage(imageName: "person")
        emailTx.setupLeftImage(imageName: "envelope")
        paswordTx.setupLeftImage(imageName: "eye.slash")
    }

}


extension UITextField {
    func setupLeftImage(imageName: String) {

        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
        imageView.image = UIImage(systemName: imageName)
        imageView.contentMode = .scaleAspectFit

        let imageContainer = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        imageContainer.addSubview(imageView)

        leftView = imageContainer
        leftViewMode = .always
        leftView?.tintColor = .systemGray
    }
}


