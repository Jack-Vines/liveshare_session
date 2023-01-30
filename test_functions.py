import pytest

from functions import fibonacci_generator, vowel_counter, reverse_sentence, is_palindrome, fahrenheit_to_celsius

def test_fibonacci_generator():
    assert fibonacci_generator(3) == 1
    assert fibonacci_generator(5) == 3
    assert fibonacci_generator(10) == 34
    assert fibonacci_generator(20) == 4181

def test_vowel_counter():
    assert vowel_counter("hello") == 2
    assert vowel_counter("hello world") == 3
    assert vowel_counter("this is a sentence with vowels") == 8

def test_reverse_sentence():
    assert reverse_sentence("hello world") == "world hello"
    assert reverse_sentence("this is a sentence") == "sentence a is this"
    assert reverse_sentence("this is a sentence with words") == "words with sentence a is this"

def test_is_palindrome():
    assert is_palindrome("racecar") == True
    assert is_palindrome("hello") == False
    assert is_palindrome("hannah") == True
    assert is_palindrome("race car") == True
    assert is_palindrome("a h i ha") == True

def test_fahrenheit_to_celsius():
    assert fahrenheit_to_celsius(32) == 0
    assert fahrenheit_to_celsius(212) == 100
    assert fahrenheit_to_celsius(98.6) == 37
    assert fahrenheit_to_celsius(0) == -17.77777777777778