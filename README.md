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
    x.report {WordGenerator::Combinator.new(6686787825).generate}
    x.report {WordGenerator::Combinator.new(2282668687).generate}
    x.report {WordGenerator::Combinator.new(2272277444).generate}
  end

     user     system      total        real
    0.306691   0.020015   0.326706 (  0.326714)
    0.203320   0.015954   0.219274 (  0.219286)
    0.306749   0.000333   0.307082 (  0.307103)

```


### NOTE

First approach I thought to just add third_combination same as first_combination and second_combination to same logic but then it was not able to work if we change number limit and min word limit, Hence I spend more time and updated logic to dynamic generation as below

Here I updated old logic to work with dynamic combination generator, earlier logic was generating only two and complete matching words combination. But now I modified it to work such as it should generate any possible words combinations like in our example max word length 10 and min word is 3 so it will generate 3 combination, 2 combination & 1 combination same if we change min word 2 it will generate 4 & 5 combinations and so on.

`Current logic has power/ability to generate any kind of word generation from number in term of word max and min length`

And also I optimized generation time and memory usage by splitting numbers into possible combination at small level and then used characters set with smaller array

Also I removed number_to_word file as we don't need input from console by `gets` and we can pass input to combinator. Combinator we can use initialize anywhere in project after installing gem.

I've created it as gem so that you can install it in project and can use it. And as best practice to create any lib/gem code should be wrapped in common namespace to avoid current project same file name conflicts. Hence I wrapped code under `WordGenerator` module although there no code in module, but it is nice to have it and will helpful to extend this gem in term of new generator of set of rules.
