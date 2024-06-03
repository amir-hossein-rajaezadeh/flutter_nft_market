class AppModels {
  List<BannerModel> getBannerList() {
    final bannerList = [
      BannerModel(
          titile: "Abstract", image: "assets/images/nft/nfts/abstract.png"),
      BannerModel(
          titile: "3D Render ", image: "assets/images/nft/nfts/3d.jpeg"),
      BannerModel(
          titile: "Space ", image: "assets/images/nft/nfts/astronaut.jpeg"),
      BannerModel(
          titile: "Nature", image: "assets/images/nft/nfts//nature.jpeg"),
    ];

    return bannerList;
  }

  List<NFTModel> getTrendingNFTList() {
    final List<NFTModel> trendingNFTList = [
      NFTModel(
          title: "Angel",
          image: "assets/images/nft/nfts/angel.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Monkey",
          image: "assets/images/nft/nfts/monkey.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Sci-fi",
          image: "assets/images/nft/nfts/sci_fi.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Space",
          image: "assets/images/nft/nfts/space.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Art",
          image: "assets/images/nft/nfts/art.png",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Tree",
          image: "assets/images/nft/nfts/glass.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Woman",
          image: "assets/images/nft/nfts/woman.jpeg",
          likeCount: 800,
          changePercent: 9,
          price: 700),
    ];
    return trendingNFTList;
  }

  List<NFTModel> getTopArtistList() {
    final List<NFTModel> topArtistList = [
      NFTModel(
          title: "Mike Winklemann",
          image: "assets/images/nft/artists/winklemann.jpeg"),
      NFTModel(
          title: "Pablo Rodriguez",
          image: "assets/images/nft/artists/fraile.jpeg"),
      NFTModel(
          title: "FEWOCiOUS",
          image: "assets/images/nft/artists/fewocious.jpeg"),
      NFTModel(
          title: "Trevor Jones", image: "assets/images/nft/artists/jones.jpeg"),
      NFTModel(
          title: "Mad Dog Jones",
          image: "assets/images/nft/artists/mad_dog.png"),
      NFTModel(
          title: "TYLERXHOBBS", image: "assets/images/nft/artists/hobbs.jpeg"),
      NFTModel(
          title: "Cory Johnson",
          image: "assets/images/nft/artists/johnson.jpeg"),
    ];

    return topArtistList;
  }

  List<NFTModel> getRankingNFTList() {
    final List<NFTModel> rankingNFTList = [
      NFTModel(
          title: "Monkey",
          image: "assets/images/nft/nfts/monkey2.jpeg",
          changePercent: 5.7,
          isOnBenefit: true,
          price: 9755.7874),
      NFTModel(
          title: "Owl",
          image: "assets/images/nft/nfts/owl.jpeg",
          isOnBenefit: true,
          changePercent: 9,
          price: 344.449),
      NFTModel(
          title: "Astonaut",
          image: "assets/images/nft/nfts/astronat2.jpeg",
          isOnBenefit: false,
          changePercent: 2.4,
          price: 1434.934),
      NFTModel(
          title: "Woman",
          image: "assets/images/nft/nfts/woman.jpeg",
          isOnBenefit: true,
          changePercent: 7.5,
          price: 765.4545),
      NFTModel(
          title: "Tree",
          isOnBenefit: true,
          image: "assets/images/nft/nfts/pink_tree.jpeg",
          changePercent: 1.6,
          price: 254.4578),
      NFTModel(
          title: "Digital Art",
          image: "assets/images/nft/nfts/digital_art.jpeg",
          isOnBenefit: false,
          changePercent: 6.7,
          price: 120.582),
      NFTModel(
          title: "Cat",
          image: "assets/images/nft/nfts/cat.jpeg",
          isOnBenefit: false,
          changePercent: 3.8,
          price: 51.878),
      NFTModel(
          title: "Dessert",
          image: "assets/images/nft/nfts/dessert.jpeg",
          isOnBenefit: true,
          changePercent: 7.9,
          price: 700.443),
      NFTModel(
          title: "Portrait",
          image: "assets/images/nft/nfts/portrait.jpeg",
          isOnBenefit: true,
          changePercent: 9.2,
          price: 354.67),
      NFTModel(
          title: "Angel",
          isOnBenefit: true,
          image: "assets/images/nft/nfts/angel.jpeg",
          changePercent: 4.7,
          price: 1296.45009),
    ];
    return rankingNFTList;
  }
}

class NFTModel {
  final String title;
  final String image;
  final double? changePercent;
  final int? likeCount;
  final double? price;
  final bool? isOnBenefit;
  NFTModel(
      {required this.title,
      required this.image,
      this.likeCount,
      this.changePercent,
      this.price,
      this.isOnBenefit});
}

class BannerModel {
  final String titile;
  final String image;
  BannerModel({required this.titile, required this.image});
}
