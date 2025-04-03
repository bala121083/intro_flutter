class Post {
  final String id;
  final String username;
  final String imageUrl;
  final String caption;
  final String createdAt;

  Post({
    required this.id,
    required this.username,
    required this.imageUrl,
    required this.caption,
    required this.createdAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      username: json['username'],
      imageUrl: json['imageUrl'],
      caption: json['caption'],
      createdAt: json['createdAt'],
    );
  }
}
