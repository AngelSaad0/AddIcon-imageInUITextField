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
        let nameFrame = nameTx.frame
        let emailFrame = emailTx.frame
        let passwordFrame = emailTx.frame

        nameTx.setupLeftImage(imageName: "person")
        emailTx.setupLeftImage(imageName: "envelope")
        paswordTx.setupLeftImage(imageName: "eye.slash")

        nameTx.addBottomLine(frame: CGRect(x: 0, y: nameFrame.height, width: nameFrame.width, height: 1.4))
        emailTx.addBottomLine(frame: CGRect(x: 0, y: emailFrame.height, width: emailFrame.width, height: 2.5))
        paswordTx.addBottomLine(frame: CGRect(x: 0, y: passwordFrame.height, width: passwordFrame.width, height: 3))

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

    func addBottomLine(frame: CGRect, color: UIColor = .systemGray) {

        let bottomline = CALayer()
        bottomline.frame = frame
        bottomline.backgroundColor = UIColor.brown.cgColor
        self.borderStyle = .none
        self.layer.addSublayer(bottomline)

    }

}


