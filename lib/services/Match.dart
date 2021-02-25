class Match {
    final int _matchId;
    final String _matchPhotoUrl;
    final String _matchAddress;
    final String _matchName;
    final int _matchAge;

  Match(this._matchId, this._matchPhotoUrl, this._matchAddress, this._matchName, this._matchAge);

    int get matchId => _matchId;
    String get matchPhotoUrl => _matchPhotoUrl;
    String get matchAddress => _matchAddress;
    String get matchName => _matchName;
    int get matchAge => _matchAge;
}
