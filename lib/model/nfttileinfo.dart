class NftTileInfo {
  final String nftTitle, image, startDate, endDate, status, id;
  final int token, price;

  NftTileInfo({
    required this.nftTitle,
    required this.image,
    required this.startDate,
    required this.endDate,
    required this.token,
    required this.id,
    required this.status,
    required this.price,
  });
}

List<NftTileInfo> nfttileinfos = [
  NftTileInfo(
    nftTitle: "NFT Title 1",
    image: "",
    startDate: "10:30 23-12-2021",
    endDate: "10:30",
    token: 4,
    id: 'Creator',
    status: 'When someone purchaesed one od your items',
    price: 3400,
  ),
  NftTileInfo(
    nftTitle: "NFT Title 2",
    image: "",
    startDate: "10:30 23-12-2021",
    endDate: "10:30",
    token: 4,
    id: 'Creator',
    status: 'When someone purchaesed one od your items',
    price: 34000,
  ),
  NftTileInfo(
    nftTitle: "NFT Title 3",
    image: "",
    startDate: "10:30 23-12-2021",
    endDate: "10:30",
    token: 4,
    id: 'Creator',
    status: 'When someone purchaesed one od your items',
    price: 3600,
  ),
  NftTileInfo(
    nftTitle: "NFT Title 4",
    image: "",
    startDate: "10:30 23-12-2021",
    endDate: "10:30",
    token: 4,
    id: 'Creator',
    status: 'When someone purchaesed one od your items',
    price: 3500,
  ),
];
