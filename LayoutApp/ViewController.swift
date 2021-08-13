//
//  ViewController.swift
//  LayoutApp
//
//  Created by Khushi Duddi on 7/22/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
        
    @IBOutlet var commentTextView: UITextView!
    
    @IBOutlet var wordCountLabel: UILabel!
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
        
        tableView.allowsSelection = false
        
        wordCountLabel.text = "3"
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
                let image = UIImage(named: "\(indexPath.row + 1)")
                cell.avatarImage.image = image
                
                return cell
    }

    func textViewDidChange(_ commentTextView: UITextView) {
        var wordCount = 0
        let separators = CharacterSet(charactersIn: " \n\t")
        let wordComponents = commentTextView.text.components(separatedBy: separators)
        let letters = NSCharacterSet.letters
        for word in wordComponents {
            if(word.rangeOfCharacter(from: letters) != nil) {
                wordCount = wordCount + 1
                print(wordCount)
            }
        }
        
        wordCountLabel.text = "\(wordCount)"
    }
}
/*
extension UIImage {
  func resizeImage(targetSize: CGSize) -> UIImage {
    let size = self.size
    let widthRatio  = targetSize.width  / size.width
    let heightRatio = targetSize.height / size.height
    let newSize = widthRatio > heightRatio ?  CGSize(width: size.width * heightRatio, height: size.height * heightRatio) : CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
    let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

    UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
    self.draw(in: rect)
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return newImage!
  }
}
*/
