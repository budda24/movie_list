class ItemModel {
  late int _page;
  late int _total_results;
  late int _total_pages;
  List<_Result> _results = [];

  void fromJson(Map<String, dynamic> parsedJson)  {
    print('dlugosc item_model: ${parsedJson["results"].length}');
    _page = parsedJson['page'];
    _total_results = parsedJson['total_results'];
    _total_pages = parsedJson['total_pages'];
    List<_Result> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      _Result result = _Result(parsedJson['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;

  int get total_pages => _total_pages;

  int get total_results => _total_results;

  int get page => _page;
}

class _Result {
  int? _vote_count;
  int? _id;
  bool? _video;
  var _vote_average;
  String? _title;
  double? _popularity;
  String? _poster_path;
  String? _original_language;
  String? _original_title;
  List<int> _genre_ids = [];
  String? _backdrop_path;
  bool? _adult;
  String? _overview;
  String? _release_date;

  _Result(result) {
    result['vote_count']!=null?_vote_count =result['vote_count']:null;
    /*_vote_count = result['vote_count']!=0;*/
    result['id']!=null?_id=result['id']:null;
    /*_id = result['id'];*/
    result['video']!=null?_video=result['video']:null;
    /*_video = result['video'];*/
    result['vote_average']!=null?_vote_average=result['vote_average']:null;
    /*_vote_average = result['vote_average'];*/
    result['title']!=null?_title=result['title']:null;
    /*_title = result['title'];*/
    result['popularity']!=null?_popularity=result['popularity']:null;
   /* _popularity = result['popularity'];*/
    result['poster_path']!=null?_poster_path=result['poster_path']:null;
    /*_poster_path = result['poster_path'];*/
    result['original_language']!=null?_original_language=result['original_language']:null;
    /*_original_language = result['original_language'];*/
    result['original_title']!=null?_original_title=result['original_title']:null;
    /*original_title = result['original_title'];*/
    for (int i = 0; i < result['genre_ids'].length; i++) {
      result['genre_ids'][i]!=null?_genre_ids.add(result['genre_ids'][i]):null;
    }
    _backdrop_path = result['backdrop_path'];
    _adult = result['adult'];
    _overview = result['overview'];
    _release_date = result['release_date'];
  }

  String? get release_date => _release_date;

  String? get overview => _overview;

  bool? get adult => _adult;

  String? get backdrop_path => _backdrop_path;

  List<int>? get genre_ids => _genre_ids;

  String? get original_title => _original_title;

  String? get original_language => _original_language;

  String? get poster_path => _poster_path;

  double? get popularity => _popularity;

  String? get title => _title;

  double? get vote_average => _vote_average;

  bool? get video => _video;

  int? get id => _id;

  int? get vote_count => _vote_count;
}
