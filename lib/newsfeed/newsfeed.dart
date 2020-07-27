import 'package:flutter/material.dart';

import 'package:newsapp/newsfeed/news.dart';
import 'package:newsapp/newsfeed/articlemodel.dart';

import 'package:newsapp/screens/details.dart';

class CNN extends StatefulWidget {
  @override
  _CNNState createState() => _CNNState();
}

class _CNNState extends State<CNN> {
  List<ArticleModel> cnnarticles = new List<ArticleModel>();
  bool _cnnloading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  getNews() async {
    News cnnnewsClass = News();
    await cnnnewsClass.getNews();
    cnnarticles = cnnnewsClass.cnnnews;
    setState(() {
      _cnnloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Center(
              child: _cnnloading
                  ? Container(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            /// Categories

                            /// News Article
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: ListView.builder(
                                  itemCount: cnnarticles.length,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return BlogTile(
                                      imgUrl:
                                          cnnarticles[index].urlToImage ?? "",
                                      title: cnnarticles[index].title ?? "",
                                      desc:
                                          cnnarticles[index].description ?? "",
                                      content: cnnarticles[index].content ?? "",
                                      posturl: cnnarticles[index].url ?? "",
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class GN extends StatefulWidget {
  @override
  _GNState createState() => _GNState();
}

class _GNState extends State<GN> {
  List<ArticleModel> gnarticles = new List<ArticleModel>();
  bool _gnloading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  getNews() async {
    News gnnewsClass = News();
    await gnnewsClass.getNews();
    gnarticles = gnnewsClass.gnews;
    setState(() {
      _gnloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Center(
              child: _gnloading
                  ? Container(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            /// Categories

                            /// News Article
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: ListView.builder(
                                  itemCount: gnarticles.length,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return BlogTile(
                                      imgUrl:
                                          gnarticles[index].urlToImage ?? "",
                                      title: gnarticles[index].title ?? "",
                                      desc: gnarticles[index].description ?? "",
                                      content: gnarticles[index].content ?? "",
                                      posturl: gnarticles[index].url ?? "",
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class NY extends StatefulWidget {
  @override
  _NYState createState() => _NYState();
}

class _NYState extends State<NY> {
  List<ArticleModel> nyarticles = new List<ArticleModel>();
  bool _NYloading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  getNews() async {
    News nynewsClass = News();
    await nynewsClass.getNews();
    nyarticles = nynewsClass.nynews;
    setState(() {
      _NYloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Center(
              child: _NYloading
                  ? Container(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            /// Categories

                            /// News Article
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: ListView.builder(
                                  itemCount: nyarticles.length,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return BlogTile(
                                      imgUrl:
                                          nyarticles[index].urlToImage ?? "",
                                      title: nyarticles[index].title ?? "",
                                      desc: nyarticles[index].description ?? "",
                                      content: nyarticles[index].content ?? "",
                                      posturl: nyarticles[index].url ?? "",
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class FN extends StatefulWidget {
  @override
  _FNState createState() => _FNState();
}

class _FNState extends State<FN> {
  List<ArticleModel> fnarticles = new List<ArticleModel>();
  bool _FNloading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  @override
  getNews() async {
    News fnnewsClass = News();
    await fnnewsClass.getNews();
    fnarticles = fnnewsClass.fnews;
    setState(() {
      _FNloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Center(
              child: _FNloading
                  ? Container(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            /// Categories

                            /// News Article
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: ListView.builder(
                                  itemCount: fnarticles.length,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return BlogTile(
                                      imgUrl:
                                          fnarticles[index].urlToImage ?? "",
                                      title: fnarticles[index].title ?? "",
                                      desc: fnarticles[index].description ?? "",
                                      content: fnarticles[index].content ?? "",
                                      posturl: fnarticles[index].url ?? "",
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imgUrl, title, desc, content, posturl;
  BlogTile({this.imgUrl, this.title, this.desc, this.content, this.posturl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailView(
                      blogurl: posturl,
                    )));
      },
      child: Container(
          child: Column(
        children: <Widget>[
          Image.network(imgUrl),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              desc,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Divider(
            color: Colors.blue,
            thickness: 3,
          )
        ],
      )),
    );
  }
}

class Fortune extends StatefulWidget {
  Fortune({Key key}) : super(key: key);

  @override
  _FortuneState createState() => _FortuneState();
}

class _FortuneState extends State<Fortune> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("fortune"),
    );
  }
}
