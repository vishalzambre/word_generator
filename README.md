# WordGenerator

Given a 10 digit phone number, it return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number. With this we can generate numbers like 1-800-motortruck which is easier to remember then 1-800-6686787825

The phone number mapping to letters is as follows:

```
2 = a b c
3 = d e f
4 = g h i
5 = j k l
6 = m n o
7 = p q r s
8 = t u v
9 = w x y z
```

## Prerequisite

1. Ruby 2.0 and above
2. TDD by Minitest

## Usage

1. Clone word generator repository

  `git clone git@github.com:vishalzambre/word_generator.git`

2. Change directory to gem root

  `cd word_generator`

3. Run bundle

  `bundle install`

4. Open irb

  `bundle console`

5. Run combinator generate command with passing different number to generate matching words

  `WordGenerator::Combinator.new(6686787825).generate`

  OR

  ```
  number_to_word = WordGenerator::NumberToWord.new
  number_to_word.combinations(6686787825)
  ```


### Output
1. First Test

```
2.6.0 :002 > WordGenerator::Combinator.new(6686787825).generate
 => [["mot", "opt", "puck"], ["mot", "opt", "ruck"], ["mot", "opt", "suck"], ["mot", "ort", "puck"], ["mot", "ort", "ruck"], ["mot", "ort", "suck"], ["not", "opt", "puck"], ["not", "opt", "ruck"], ["not", "opt", "suck"], ["not", "ort", "puck"], ["not", "ort", "ruck"], ["not", "ort", "suck"], ["oot", "opt", "puck"], ["oot", "opt", "ruck"], ["oot", "opt", "suck"], ["oot", "ort", "puck"], ["oot", "ort", "ruck"], ["oot", "ort", "suck"], ["noun", "struck"], ["onto", "struck"], ["noun", "pup", "taj"], ["noun", "pur", "taj"], ["noun", "pus", "taj"], ["noun", "sup", "taj"], ["noun", "suq", "taj"], ["onto", "pup", "taj"], ["onto", "pur", "taj"], ["onto", "pus", "taj"], ["onto", "sup", "taj"], ["onto", "suq", "taj"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :003 >
```

2. Second Test

```
2.6.0 :003 > WordGenerator::Combinator.new(2282668687).generate
 => [["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["act", "boo", "tots"], ["act", "boo", "tour"], ["act", "con", "tots"], ["act", "con", "tour"], ["act", "coo", "tots"], ["act", "coo", "tour"], ["bat", "boo", "tots"], ["bat", "boo", "tour"], ["bat", "con", "tots"], ["bat", "con", "tour"], ["bat", "coo", "tots"], ["bat", "coo", "tour"], ["cat", "boo", "tots"], ["cat", "boo", "tour"], ["cat", "con", "tots"], ["cat", "con", "tour"], ["cat", "coo", "tots"], ["cat", "coo", "tour"], ["acta", "mounts"], ["acta", "mot", "mus"], ["acta", "mot", "nus"], ["acta", "mot", "our"], ["acta", "not", "mus"], ["acta", "not", "nus"], ["acta", "not", "our"], ["acta", "oot", "mus"], ["acta", "oot", "nus"], ["acta", "oot", "our"], ["catamounts"]]
2.6.0 :004 >

```

2. Third Test

```
2.6.0 :005 > WordGenerator::Combinator.new(2272277444).generate.uniq
 => [["aas", "aarrghh"], ["abs", "aarrghh"], ["bap", "aarrghh"], ["bar", "aarrghh"], ["bas", "aarrghh"], ["cap", "aarrghh"], ["car", "aarrghh"], ["aas", "aas", "sigh"], ["aas", "abs", "sigh"], ["aas", "bap", "sigh"], ["aas", "bar", "sigh"], ["aas", "bas", "sigh"], ["aas", "cap", "sigh"], ["aas", "car", "sigh"], ["abs", "aas", "sigh"], ["abs", "abs", "sigh"], ["abs", "bap", "sigh"], ["abs", "bar", "sigh"], ["abs", "bas", "sigh"], ["abs", "cap", "sigh"], ["abs", "car", "sigh"], ["bap", "aas", "sigh"], ["bap", "abs", "sigh"], ["bap", "bap", "sigh"], ["bap", "bar", "sigh"], ["bap", "bas", "sigh"], ["bap", "cap", "sigh"], ["bap", "car", "sigh"], ["bar", "aas", "sigh"], ["bar", "abs", "sigh"], ["bar", "bap", "sigh"], ["bar", "bar", "sigh"], ["bar", "bas", "sigh"], ["bar", "cap", "sigh"], ["bar", "car", "sigh"], ["bas", "aas", "sigh"], ["bas", "abs", "sigh"], ["bas", "bap", "sigh"], ["bas", "bar", "sigh"], ["bas", "bas", "sigh"], ["bas", "cap", "sigh"], ["bas", "car", "sigh"], ["cap", "aas", "sigh"], ["cap", "abs", "sigh"], ["cap", "bap", "sigh"], ["cap", "bar", "sigh"], ["cap", "bas", "sigh"], ["cap", "cap", "sigh"], ["cap", "car", "sigh"], ["car", "aas", "sigh"], ["car", "abs", "sigh"], ["car", "bap", "sigh"], ["car", "bar", "sigh"], ["car", "bas", "sigh"], ["car", "cap", "sigh"], ["car", "car", "sigh"], ["barb", "app", "ghi"], ["barb", "app", "gig"], ["barb", "app", "igg"], ["barb", "ars", "ghi"], ["barb", "ars", "gig"], ["barb", "ars", "igg"], ["barb", "asp", "ghi"], ["barb", "asp", "gig"], ["barb", "asp", "igg"], ["barb", "ass", "ghi"], ["barb", "ass", "gig"], ["barb", "ass", "igg"], ["barb", "brr", "ghi"], ["barb", "brr", "gig"], ["barb", "brr", "igg"], ["carb", "app", "ghi"], ["carb", "app", "gig"], ["carb", "app", "igg"], ["carb", "ars", "ghi"], ["carb", "ars", "gig"], ["carb", "ars", "igg"], ["carb", "asp", "ghi"], ["carb", "asp", "gig"], ["carb", "asp", "igg"], ["carb", "ass", "ghi"], ["carb", "ass", "gig"], ["carb", "ass", "igg"], ["carb", "brr", "ghi"], ["carb", "brr", "gig"], ["carb", "brr", "igg"], ["casa", "app", "ghi"], ["casa", "app", "gig"], ["casa", "app", "igg"], ["casa", "ars", "ghi"], ["casa", "ars", "gig"], ["casa", "ars", "igg"], ["casa", "asp", "ghi"], ["casa", "asp", "gig"], ["casa", "asp", "igg"], ["casa", "ass", "ghi"], ["casa", "ass", "gig"], ["casa", "ass", "igg"], ["casa", "brr", "ghi"], ["casa", "brr", "gig"], ["casa", "brr", "igg"], ["barcas", "sigh"], ["carcass", "ghi"], ["carcass", "gig"], ["carcass", "igg"]]
```

### Benchmark

```ruby
  require 'benchmark'
  Benchmark.bm do |x|
    number_to_word = WordGenerator::NumberToWord.new
    x.report {WordGenerator::Combinator.new(6686787825).generate}
    x.report {WordGenerator::Combinator.new(2282668687).generate}
    x.report {WordGenerator::Combinator.new(2272277444).generate}

    x.report {number_to_word.combinations(6686787825)}
    x.report {number_to_word.combinations(2282668687)}
    x.report {number_to_word.combinations(2272277444)}
    x.report {number_to_word.combinations(6686787825)}
  end

     user     system      total        real
   0.229325   0.000000   0.229325 (  0.229345)
   0.225003   0.000000   0.225003 (  0.225020)
   0.313700   0.000000   0.313700 (  0.313747)
   0.260198   0.000000   0.260198 (  0.260216)
   0.194499   0.000000   0.194499 (  0.194580)
   0.314725   0.000000   0.314725 (  0.314746)
   0.000010   0.000000   0.000010 (  0.000008)

```
