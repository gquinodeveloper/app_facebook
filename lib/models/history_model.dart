class HistoryModel {
  int? id;
  String? name;
  String? path;
  String? avatar;
  bool isFirst = false;

  HistoryModel({
    this.id,
    this.name,
    this.path,
    this.avatar,
    required this.isFirst,
  });
}

List<HistoryModel> histories = [
  HistoryModel(
    id: 1,
    name: "Mao",
    path: "assets/images/mau.jpg",
    avatar: "assets/images/arturo.jpg",
    isFirst: true,
  ),
  HistoryModel(
    id: 2,
    name: "Fernanda",
    path: "assets/images/fernanda.jpg",
    avatar: "assets/images/mariana.jpg",
    isFirst: false,
  ),
  HistoryModel(
    id: 3,
    name: "New Geo",
    path: "assets/images/geo.jpg",
    avatar: "assets/images/gana.jpg",
    isFirst: false,
  ),
  HistoryModel(
    id: 4,
    name: "Arturo",
    path: "assets/images/arturo.jpg",
    avatar: "assets/images/mica.jpg",
    isFirst: false,
  ),
  HistoryModel(
    id: 5,
    name: "Zully",
    path: "assets/images/mari.jpg",
    avatar: "assets/images/mau.jpg",
    isFirst: false,
  ),
];
