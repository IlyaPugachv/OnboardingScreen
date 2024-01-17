import UIKit

class ViewController: UIViewController {
    
    let sliderData: [SliderItem] = [
      SliderItem(color: .gray, title: "Slide 1", text: "fast", animationName: ""),
      SliderItem(color: .red, title: "Slide 2", text: "small", animationName: ""),
      SliderItem(color: .brown, title: "Slide 3", text: "forever", animationName: ""),
  ]
    
    lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.width, height: view.frame.height)
        layout.minimumLineSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
    
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.delegate = self
        collection.dataSource = self
        collection.register(SliderViewCell.self, forCellWithReuseIdentifier: "cell")
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.isPagingEnabled = true
        
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
    
    private func setupCollection() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        sliderData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? SliderViewCell {
            cell.contentView.backgroundColor = sliderData[indexPath.item].color
            cell.titleLabel.text = sliderData[indexPath.item].title
            cell.textLabel.text = sliderData[indexPath.item].text
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
