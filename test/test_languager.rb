# encoding: utf-8

require 'helper'
require 'languager'

class TestLanguager < Test::Unit::TestCase
  def test_mixed_chars_to_ru
    input = "ghbdtn^ vbh!"
    assert_equal "привет, мир!", input.to_ru
  end

  def test_to_ru_new
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input.to_ru
  end

  def test_to_ru_modify
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    input.to_ru!
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input
  end

  def test_to_ru_new_nil
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_ru
  end

  def test_to_ru_modify_nil
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_ru!
  end

  def test_return_new_string_in_russian_from_english
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input.to_language(:ru)
  end

  def test_return_nil_on_some_non_english_char
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_language(:ru)
  end

  def test_return_new_string_in_russian_from_english_by_shorthand
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input.to_lang(:ru)
  end

  def test_return_nil_on_some_non_english_char_by_short_hand
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_lang(:ru)
  end

  def test_return_nil_on_some_non_english_char_by_modify
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_language!(:ru)
  end

  def test_return_nil_on_some_non_english_char_by_modify_shorthand
    input = 'qуwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    assert_nil input.to_lang!(:ru)
  end

  def test_modify_string_in_russian_from_english
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    input.to_language!(:ru)
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input
  end

  def test_modify_string_in_russian_from_english_by_shorthand
    input = 'qwertyuiop[]asdfghjkl;\'\\zxcvbnm,.QWERTYUIOP{}ASDFGHJKL:"|ZXCVBNM<>'
    input.to_lang!(:ru)
    assert_equal 'йцукенгшщзхъфывапролджэёячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЁЯЧСМИТЬБЮ', input
  end
end
