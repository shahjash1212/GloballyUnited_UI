class NftTileInfo {
  final String nftTitle,image,startDate,endDate;
  final int token ;


  NftTileInfo({
    required this.nftTitle,
    required this.image,
    required this.startDate,
    required this.endDate,
    
    required this.token,
  });
  
}


List<NftTileInfo> nfttileinfos = [
  NftTileInfo(nftTitle: "NFT Title 1", image: "", startDate: "10:30 23-12-2021", endDate: "10:30", token: 4),
  NftTileInfo(nftTitle: "NFT Title 2", image: "", startDate: "10:30 23-12-2021", endDate: "10:30", token: 4),
  NftTileInfo(nftTitle: "NFT Title 3", image: "", startDate: "10:30 23-12-2021", endDate: "10:30", token: 4),
  NftTileInfo(nftTitle: "NFT Title 4", image: "", startDate: "10:30 23-12-2021", endDate: "10:30", token: 4),
];