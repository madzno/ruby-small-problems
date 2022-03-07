=begin
Read problem outlout

Input: a text file
Ouptut: the longest sentence printed and its number of words
printed

Rules from Problems/Test cases
A sentence is any length of test that ends with a period, exclamtion point
or question mark

Words are any characters deliminated by a space

Data Structure
an array
a string


Algo
define a method find_longest that takes a file of test

define a variable sentences equal to the regex hint, this will be an
array of sentences from the input test

iterate through the sentinces array and split each sentence into
an array of words split on white space

sentences array is now a multidimensional array with each sub array
containing the words in each sentence

sort the sentences array by array length

assign the last element in the sentences array to the variable longest_sentence

count the number of elements in the longest_sentence array and assign this
to word count

output longest_sentence

output wordcount

=end

def find_longest(text)
  sentences = text.split(/\.|\?|!/)
  sentences.map! do |sentence|
    sentence.split(' ')
  end
  sentences.sort_by! do |sub_arr|
    sub_arr.length
  end
  longest_sentence = sentences[-1]
  word_count = longest_sentence.count
  p longest_sentence.join(' ')
  p word_count
end


example = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

find_longest(example)
