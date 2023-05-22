//
//  profileViewController.swift
//  sahibinden
//
//  Created by Furkan Yükcü on 19.04.2023.
//

import UIKit

class profileViewController: UIViewController {
    @IBOutlet weak var profileTableView: UITableView!
    
    var parts = ["İlan Yönetimi","MESAJLAR VE BİLGİLENDİRMELER","FAVORİLER"," "," ","ALIŞVERİŞ İŞLEMLERİM","HESABIM","DİĞER"," "]
    
    var inparts = [["Yayında Olanlar","Yayında Olmayanlar","İlana QR Kod ile Fotoğraf Ekleme"],["Mesajlar","Bilgilendirmeler"],["Favori İlanlar","Favori Aramalar","Favori Satıcılar"],["Size Özel İlanlar"],["Karşılaştırma Listesi"],["Güvenli E-Ticaret","S-Param Güvende"],["Hesap Bilgilerim","Cebinden Onaylı Numaram","İzinlerim" ],["Ayarlar","Yardım ve işlem Rehberi","Sorun/Öneri Bildirimi","Hakkında","Kişisel Verilerin Korunması","Çerezler"],["Çıkış Yap"]]
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTableView.dataSource = self
        profileTableView.delegate = self
    }
}

extension profileViewController : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
    return parts.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:
    Int) -> Int {
    return inparts[section].count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section:
    Int) -> String? {
    return parts[ section]
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell",for: indexPath)
        cell.textLabel?.text = inparts[indexPath.section][indexPath.row]
        
        return cell
    }
}
