class Crossword {
  final int id;
  final String name;
  final Across across;

  Crossword(this.id, this.name,this.across);
}

class Across {
  final List<Word> words;

  const Across(this.words);
}

class Word {
  final int number;
  final String word;

  const Word(this.number, this.word);
}