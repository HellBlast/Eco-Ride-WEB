class ProductItem {
  final String image, title;
  final int amount, uid;
  ProductItem({
    this.uid,
    this.image,
    this.title,
    this.amount,
  });
}

List<ProductItem> products = [
  ProductItem(
    uid: 1,
    title: "Bicicleta de montaña",
    amount: 75,
    image: "assets/images/bici.jpg",
  ),
  ProductItem(
    uid: 2,
    title: "Bicicleta MTB GW PIRANHA",
    amount: 155,
    image: "assets/images/gw.jpg",
  ),
  ProductItem(
    uid: 3,
    title: "Ruta de las mulas",
    amount: 100,
    image: "assets/images/mulas.jpg",
  ),
];
