class PostModel {
  int? id;
  String? fullName;
  String? path;
  String? description;
  String? pathPost;
  String? comments;
  String? shares;

  PostModel({
    this.id,
    this.fullName,
    this.path,
    this.description,
    this.pathPost,
    this.comments,
    this.shares,
  });
}

List<PostModel> posts = [
  PostModel(
    id: 1,
    fullName: "Gustavo Quino",
    path: "assets/images/mao.jpg",
    pathPost: "assets/images/flutter.jpeg",
    description: "Me encanto la sesión de diseño de facebook con flutter 😌🤙",
    comments: "30 comentarios",
    shares: "5 compartidos",
  ),
  PostModel(
    id: 2,
    fullName: "Daniela Fernández Ramos",
    path: "assets/images/mari.jpg",
    pathPost: "assets/images/yuri.png",
    description: "Siempre ganas encanto la sesión de hoy.",
    comments: "30 comentarios",
    shares: "5 compartidos",
  ),
  PostModel(
    id: 3,
    fullName: "Gana con Rappi",
    path: "assets/images/mariana.jpg",
    pathPost: "assets/images/gana.jpg",
    description: "Siempre ganas encanto la sesión de hoy.",
    comments: "30 comentarios",
    shares: "5 compartidos",
  ),
];
