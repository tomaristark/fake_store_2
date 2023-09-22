class ProductVO{
  int prodcutID;
  String productName;
  String prodcutDescription;
  String productImage;
  double productPrice;
  String productCreator;
  bool IsInCart;

  ProductVO(this.productName,this.prodcutDescription,this.productPrice,this.productCreator,this.productImage,this.prodcutID,{this.IsInCart= false});
}


List<ProductVO> products =[
  ProductVO(
    
    "Special cotton shirt for man",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      39.21,
       "Gol.D.Roger",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
        0
      ),
  ProductVO(
    "SayrGyi prdoduct",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      21.21,
       "Edward Newgate",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
        1
      ),
  ProductVO(
    "Arament Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      30,
       "MiHawk",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
        2
      ),
  ProductVO(
    "Observation Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      34,
       "KAtakuri",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
        3
      ),
  ProductVO(
    "Conqueror Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      312,
       "SHank",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
      4
      ),
  ProductVO(
    "Special cotton shirt for man",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      39.21,
       "Gol.D.Roger",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
      5
      ),
  ProductVO(
    "SayrGyi prdoduct",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      21.21,
       "Edward Newgate",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
     6
      ),
  ProductVO(
    "Arament Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      30,
       "MiHawk",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
      7
      ),
  ProductVO(
    "Observation Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      34,
       "KAtakuri",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
      8
      ),
  ProductVO(
    "Conqueror Haki",
     "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
      312,
       "SHank",
        "https://www.bellobello.my/wp-content/uploads/2022/09/homegrown-food-product-brands-malaysia.jpg",
     9
      ),
];

void main (){
    
}