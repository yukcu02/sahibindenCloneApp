//
//  ViewController.swift
//  sahibinden
//
//  Created by Furkan Yükcü on 18.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var vitrinCollectionView: UICollectionView!
    
    var advertList = [vitrinAdverts] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vitrinCollectionView.delegate = self
        vitrinCollectionView.dataSource = self
      
        let f1 = vitrinAdverts(advertImage: "page11", advertLabel: " Mission 2020 AUDI A3 2020 SIFIR FIYATINA" )
        let f2 = vitrinAdverts(advertImage: "page12", advertLabel: "AKB/2-1 OFFROAD KARAVAN TAM BOY  " )
        let f3 = vitrinAdverts(advertImage: "page13", advertLabel: "HAMBURGER VE SANDVİÇ KALIP MAKİNESİ" )
        let f4 = vitrinAdverts(advertImage: "page14", advertLabel: "İLK SAHİBİNDEN 2020 MODEL" )
        let f5 = vitrinAdverts(advertImage: "page15", advertLabel: "DİZEL ENJEKTÖR & POMPA" )
        let f6 = vitrinAdverts(advertImage: "page16", advertLabel: "27 favori son iki gün fiyat değişecek" )
        let f7 = vitrinAdverts(advertImage: "page17", advertLabel: "2020 MODEL 2021 TEMMUZ TRAFİĞE ÇIKIŞ" )
        let f8 = vitrinAdverts(advertImage: "page18", advertLabel: "C A N K A Y' D A N TÜRKİYEDE TEK  " )
        let f9 = vitrinAdverts(advertImage: "page19", advertLabel: "SKYWELL BAYİSİ CANKAYADA TEK  " )
        let f10 = vitrinAdverts(advertImage: "page20", advertLabel: "KISA KATLI BEYLİKDÜZÜNDE SIFIR DAİRE  " )
        let f11 = vitrinAdverts(advertImage: "page21", advertLabel: "Narlıdere Villada Yatılı yardımcılı  " )
        let f12 = vitrinAdverts(advertImage: "page22", advertLabel: "RENO MEGANE 4 TESLA EKRAN " )
        
        advertList.append(f1)
        advertList.append(f2)
        advertList.append(f3)
        advertList.append(f4)
        advertList.append(f5)
        advertList.append(f6)
        advertList.append(f7)
        advertList.append(f8)
        advertList.append(f9)
        advertList.append(f10)
        advertList.append(f11)
        advertList.append(f12)
        
        let myDesign : UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        let screenWidth = self.vitrinCollectionView.frame.size.width
        
        myDesign.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        myDesign.itemSize = CGSize(width: (screenWidth-25)/2, height: (screenWidth-25)/2)
        
        myDesign.minimumInteritemSpacing = 5
        
        myDesign.minimumLineSpacing = 5
        
//        cell.layer.
        
        vitrinCollectionView!.collectionViewLayout = myDesign
        
    }
}
extension ViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return advertList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt
                        indexPath: IndexPath) -> UICollectionViewCell {
        
        let advert = advertList[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"carCell", for: indexPath) as! carCell
        
        
        cell.advertImage.image = UIImage(named: advert.advertImage!)
        cell.advertLabel.text = advert.advertLabel!
        return cell
    }
}
