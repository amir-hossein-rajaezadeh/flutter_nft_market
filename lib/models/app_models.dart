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
          likeCount: 997,
          changePercent: 9,
          desc:
              "Rarible allows users to buy and sell art, collectibles, video game assets and NFTs. You can buy and deal on Rarible with Ethereum, Polygon, Tezos and Immutable X. However, you will be charged fees.An interesting aspect of Rarible: Rather than having in-house management decide everything, Rarible created its own native token called RARI. The holders of RARI get to vote on company decisions like company policy changes. es, video game assets and NFTs. You can buy and deal on Rarible with Ethereum, Polygon, Tezos and Immutable X. However, you will be charged fees.An interesting aspect of Rarible: Rather than having in-house management decide everything, Rarible created its own native token called RARI. The holders of RARI get to vote on company decisions like company policy changes.",
          isOnBenefit: true,
          price: 700),
      NFTModel(
          title: "Monkey",
          image: "assets/images/nft/nfts/monkey.jpeg",
          likeCount: 980,
          isOnBenefit: true,
          desc:
              "You can buy video clips, play highlights and art for both the NBA and the WNBA. But some of these Moments haven’t been cheap. A LeBron James slam dunk video fetched 208,000 at the height of the NFT market in February 2021. NBA and the WNBA. But some of these Moments haven’t been cheap. A LeBron James slam dunk video fetched 208,000 at the height of the NFT market in February 2021 highlights and art for both the NBA and the WNBA. But some of these Moments haven’t been cheap y highlights and art for both the NBA and the WNBA. But some of these Moments haven’t ",
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Sci-fi",
          image: "assets/images/nft/nfts/sci_fi.jpeg",
          likeCount: 837,
          isOnBenefit: false,
          desc:
              "Users can purchase Moment NFTs with credit/debit cards or select cryptocurrencies, such as Bitcoin, Ethereum, Bitcoin Cash, DAI or USDC. And of course, fees are added to the purchase price, whether you’re buying that iconic moment with a credit card or cryptocurrency. select cryptocurrencies, such as Bitcoin, Ethereum, Bitcoin Cash, DAI or USDC. And of course, fees are added to the purchase price, whether you’re buying that iconic moment with a credit card or cryptocurrency. Users can purchase Moment NFTs with credit/debit cards or select cryptocurrencies, such as Bitcoin, Ethereum, Bitcoin Cash",
          changePercent: 9,
          price: 700),
      NFTModel(
          title: "Space",
          isOnBenefit: true,
          desc:
              "Nifty Gateway is known for hosting expensive and exclusive NFT sales, including digital artist Paks “The Merge,” which sold for 91.8 million. It made headlines when the platform was acquired in late 2019 by Gemini, which is run by the Winklevoss twins, Cameron and Tyler Winklevoss.  for hosting expensive and exclusive NFT sales, including digital artist Pak’s “The Merge,” which sold for 91.8 million. It made headlines when the platform was acquired in late 2019 by Gemini, which is run by the Winklevoss twins, Cameron and Tyler Winklevoss. g expensive and exclusive NFT sales, including digital artist Paks “The Merge,” which sold for 91.8 million. It made headlines when the platform was acquired in late 2019 by Gemini, which is run by the Winklevoss twins, Cameron and Tyler Winklevoss.  for hosting expensive and exclusive NFT sales, including digital artist Pak’s “The Merge,” which sold for 91.8 million. It made headlines when the platform was acquired in late 2019 by Gemini, which is run by the Winklevoss twins, Cameron and Tyler Winklevoss.",
          image: "assets/images/nft/nfts/space.jpeg",
          likeCount: 753,
          changePercent: 9,
          price: 700),
      NFTModel(
          isOnBenefit: false,
          title: "Art",
          image: "assets/images/nft/nfts/art.png",
          likeCount: 659,
          changePercent: 9,
          desc:
              "This marketplace focuses on artwork, especially artwork from celebrities and top artists. To boost demand, Nifty Gateway uses an “open editions” system. When a new type of NFT comes out, you can only buy editions for just a limited time.",
          price: 700),
      NFTModel(
          title: "Tree",
          isOnBenefit: false,
          image: "assets/images/nft/nfts/glass.jpeg",
          likeCount: 620,
          desc:
              "Given that SuperRare spends so much time reviewing work before it’s available for sale, investors can feel more confident in the quality. For their services, SuperRare charges 15% the first time an NFT is sold on the primary market. There is also a flat 3% of every transaction, which the buyer pays.",
          changePercent: 9,
          price: 700),
      NFTModel(
          isOnBenefit: true,
          title: "Woman",
          image: "assets/images/nft/nfts/woman.jpeg",
          likeCount: 540,
          desc:
              "Each NFT marketplace has its own system for how it operates. The types of NFTs available, fees, payment options, permitted blockchains and other rules will depend on which one you use.",
          changePercent: 9,
          price: 700),
    ];
    return trendingNFTList;
  }

  List<NFTModel> getTopArtistList() {
    final List<NFTModel> topArtistList = [
      NFTModel(
        title: "Mike Winklemann",
        image: "assets/images/nft/artists/winklemann.jpeg",
        desc:
            "Michael Joseph Winkelmann (born 20 June 1981), known professionally as Beeple, is an American digital artist, graphic designer, and animator known for selling NFTs.[1] In his art, he uses various media to create comical, phantasmagoric works that make political and social commentary while using pop culture figures as references. British auction house Christie's has called him A visionary digital artist at the forefront of NFTs Beeple was introduced to NFTs in October 2020 and credits Pak for providing his first on selling NFTs.[3][4] The NFT associated with Everydays: the First 5000 Days, a collage of images from his  series, was sold on March 12, 2021, for 69 million in cryptocurrency to an investor in NFTs.[5][6] It is the first purely non-fungible token to be sold by Christie's. The auction house had previously sold Block 21, an NFT with accompanying physical painting for approximately 130,000 in October 2020.",
      ),
      NFTModel(
          title: "Pablo Rodriguez",
          image: "assets/images/nft/artists/fraile.jpeg",
          desc:
              "The Honourable Pablo Rodriguez was first elected as the Member of Parliament for Honoré-Mercier in 2004. He has previously served as Minister of Canadian Heritage, as Leader of the Government in the House of Commons, and as Minister of Canadian Heritage and Multiculturalism. Minister Rodriguez is known for his work to support the fight against climate change, protect and promote culture, and promote official languages and minority rights."),
      NFTModel(
          title: "FEWOCiOUS",
          image: "assets/images/nft/artists/fewocious.jpeg",
          desc: ""),
      NFTModel(
          title: "Trevor Jones",
          image: "assets/images/nft/artists/jones.jpeg",
          desc:
              "Trevor Jones (Kaapstad, 23 maart 1949) is een Zuid-Afrikaanse filmcomponist. Jones studeerde aan de Universiteit van Kaapstad en de Royal Academy of Music in Londen. Hij schreef eind jaren zestig compositie en orkestratie voor de BBC radio en televisie. Hij studeerde ook in de jaren zeventig aan de Universiteit van York in Engeland. Jones begon 1979 muziek te componeren voor films en televisieseries en won twee ASCAP Awards met de films Cliffhanger in 1994 en Notting Hill in 2000.[1]"),
      NFTModel(
          title: "Mad Dog Jones",
          image: "assets/images/nft/artists/mad_dog.png",
          desc:
              "Before digital art became his primary medium in 2017, Mad Dog Jones defined his artistic practice by graffiti, painting, and projects that involved music. As a leading NFT artist, Mad Dog Jones has created artworks for Deadmau5, Conor McGregor, Chromeo, and Maroon 5."),
      NFTModel(
          title: "TYLERXHOBBS",
          image: "assets/images/nft/artists/hobbs.jpeg",
          desc:
              "Fidenza is the brainchild of Tyler Hobbs, 34, who quit his computer engineering job to work as a full time artist. He struck ETH when he discovered Art Blocks, an art platform that creates NFT's based on generative art, and became a curated artist"),
      NFTModel(
          title: "Cory Johnson",
          image: "assets/images/nft/artists/johnson.jpeg",
          desc:
              "Corey Johnson (born John William Johnson; May 17, 1961) is an American character actor largely active in the UK, known for his supporting roles in Hellboy, Kingsman: The Secret Service, Captain Philips, The Bourne Ultimatum, Kick-Ass, Ex Machina, the Spooks episode , the Doctor Who episode and The Last Days of Lehman Brothers as Richard S. Fuld, Jr., the final chairman & CEO of Lehman Brothers."),
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
          changePercent: 9.1,
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
  final String? desc;
  NFTModel(
      {required this.title,
      required this.image,
      this.likeCount,
      this.changePercent,
      this.price,
      this.isOnBenefit,
      this.desc});
}

class BannerModel {
  final String titile;
  final String image;
  BannerModel({required this.titile, required this.image});
}
