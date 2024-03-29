import UIKit

final class DocumentListLayout: UICollectionViewFlowLayout {
    override func prepare() {
        if let collectionView = collectionView, collectionView.bounds.width > 0 {
            let calculatedItemWidth = (round(collectionView.bounds.width) - 3 * 8) / 2
            let calculatedItemHeight = calculatedItemWidth * 1.5
            itemSize = CGSize(width: calculatedItemWidth, height: calculatedItemHeight)
            minimumLineSpacing = 8
            minimumInteritemSpacing = 8
            sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            scrollDirection = .vertical
        }
    }

    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return false
    }
}
