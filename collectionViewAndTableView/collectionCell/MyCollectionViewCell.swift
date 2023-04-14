//
//  MyCollectionViewCell.swift
//  collectionViewAndTableView
//
//  Created by Alperen Kavuk on 13.04.2023.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with model:Model){
        self.label.text = model.text
        self.imageView.image =  UIImage(named: model.image)
        
    }
    
}
