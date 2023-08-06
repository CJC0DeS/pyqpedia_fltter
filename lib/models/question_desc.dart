class QuestionDesc {
  QuestionDesc(this.q, this.opt);

  String q;
  List<String> opt;

  // for(String str in opt)
  // {
  //   print(str);
  // }

  List<String> getshuffledopt() {
    final shuffledopt = List.of(opt);
    shuffledopt.shuffle();
    return shuffledopt;
  }
}
