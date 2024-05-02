# frozen_string_literal:true

animal = {
  'vertebrado' => {
    'ave' => { 'carnivoro' => 'aguia', 'onivoro' => 'pomba' },
    'mamifero' => { 'onivoro' => 'homem', 'herbivoro' => 'vaca' }
  },
  'invertebrado' => {
    'inseto' => { 'hematofago' => 'pulga', 'herbivoro' => 'lagarta' },
    'anelideo' => { 'hematofago' => 'sanguessuga', 'onivoro' => 'minhoca' }
  }
}

word1 = gets.strip
word2 = gets.strip
word3 = gets.strip
puts animal[word1][word2][word3]
