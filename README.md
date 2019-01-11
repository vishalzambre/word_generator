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

3. Install gem from source

  `gem install ./word_generator-0.1.0.gem`

4. Open irb

  `irb`

5. Require `word_generator`

  require `word_generator`

6. Run combinator generate command with passing different number to generate matching words

  `WordGenerator::Combinator.new(6686787825).generate`


### Output
```
2.6.0 :002 > WordGenerator::Combinator.new(6686787825).generate
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :003 >
```

### Output with execution time

```
2.6.0 :001 > WordGenerator::Combinator.new(6686787825).generate
Time 0.31345438957214355
 => [["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]]
2.6.0 :002 > WordGenerator::Combinator.new(2282668687).generate
Time 0.28045105934143066
 => [["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["catamounts"]]
2.6.0 :003 >

```

### Benchmark

```ruby
  require 'benchmark'
  Benchmark.bm do |x|
    x.report {WordGenerator::Combinator.new(6686787825).generate}
  end

  user     system      total        real
  0.307793   0.026808   0.334601 (  0.394809)
```
