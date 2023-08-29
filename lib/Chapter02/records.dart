(String, int, String, int) getFinalScore() {
  return ("Middlesbrough", 4, "Manchester City", 0);
}

void main() {
  {
    var finalScore = getFinalScore();
    var homeTeam = finalScore.$1;
  }

  {
    var (homeTeam, homeScore, awayTeam, awayScore) = getFinalScore();
    print(homeTeam);
  }
}
