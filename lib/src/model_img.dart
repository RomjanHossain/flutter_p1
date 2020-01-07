class ImageFetch {
  int id;
  String title;
  String url;
  ImageFetch(this.id, this.title, this.url);

  ImageFetch.formJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    title = parsedJson['title'];
    url = parsedJson['url'];
  }
}
