//
//  CircleCollectionViewCell.swift
//  StoriesCollectionView
//
//  Created by Josina Zotzmann on 17.06.20.
//  Copyright © 2020 Josina Zotzmann. All rights reserved.
//

import UIKit

class CircleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CircleCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 120/2
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.link.cgColor
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(myImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        myImageView.frame = contentView.bounds
    }
   
    public func configure(with name: String){
        myImageView.image = UIImage(named: name)
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        myImageView.image = nil
    }
}
