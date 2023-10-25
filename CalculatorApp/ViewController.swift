//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Seyhun Koçak on 22.10.2023.
//

import UIKit

class ViewController: UIViewController {
    var cornerRadius : Int = 0
    
    @IBOutlet weak var displayNumLabel: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "Cell", bundle: nil)
        self.collectionView.register(nib, forCellWithReuseIdentifier: "Cell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        cell.layer.cornerRadius = CGFloat(cornerRadius)
        switch indexPath.row {
        case 0:
            cell.cellLabel.text = "AC"
            cell.backgroundColor = .lightGray
        case 1:
            cell.cellLabel.text = "+/-"
            cell.backgroundColor = .lightGray
        case 2:
            cell.cellLabel.text = "%"
            cell.backgroundColor = .lightGray
        case 3:
            cell.cellLabel.text = "÷"
            cell.backgroundColor = .orange
            cell.cellLabel.textColor = .white
        case 4:
            cell.cellLabel.text = "7"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 5:
            cell.cellLabel.text = "8"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 6:
            cell.cellLabel.text = "9"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 7:
            cell.cellLabel.text = "x"
            cell.backgroundColor = .orange
            cell.cellLabel.textColor = .white
        case 8:
            cell.cellLabel.text = "4"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 9:
            cell.cellLabel.text = "5"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 10:
            cell.cellLabel.text = "6"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 11:
            cell.cellLabel.text = "-"
            cell.backgroundColor = .orange
            cell.cellLabel.textColor = .white
        case 12:
            cell.cellLabel.text = "1"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 13:
            cell.cellLabel.text = "2"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 14:
            cell.cellLabel.text = "3"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 15:
            cell.cellLabel.text = "+"
            cell.backgroundColor = .orange
            cell.cellLabel.textColor = .white
        case 16:
            cell.cellLabel.text = "0"
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 17:
            cell.cellLabel.text = ","
            cell.backgroundColor = .gray
            cell.cellLabel.textColor = .white
        case 18:
            cell.cellLabel.text = "="
            cell.backgroundColor = .orange
            cell.cellLabel.textColor = .white

            
        default:
            cell.cellLabel.text = "test"
            
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? Cell {
            
            self.displayNumLabel.text = cell.cellLabel.text

        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width : CGFloat = (self.view.frame.width - 45) / 4
        let height : CGFloat = width
        
        let widthZero : CGFloat = width * 2 + 15
        cornerRadius = Int(width / 2)
        
        switch indexPath.row {
        case 16:
            return CGSize(width: widthZero, height: height)

        default:
            return CGSize(width: width, height: height)

        }
        

    }
    
    
}

