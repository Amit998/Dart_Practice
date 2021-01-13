// D:\study\workplace\project\Flutter Animation\flutter_animation_1

main(List<String> args) {
  // User().postCommand();
  Moderator().postCommand();
  Moderator().deleteComment();
  Publisher().publishArticle();
  Admin().publishArticle();
  Admin().publishArticle();
  Admin().postCommand();
}

class User {
  void postCommand() {
    print('Post Command');
  }
}

class Moderator extends User {
  void deleteComment() {
    print('Delete comment');
  }
}

class Publisher extends User with CanPublishArticle {
  // void publishArticle() {
  //   print('article published');
  // }
}

class Admin extends Moderator with CanPublishArticle {}

mixin CanPublishArticle {
  void publishArticle() {
    print('article published');
  }
}
