module Languager::String
  include Languager::Subs

  # Translates string to russian language by keyboard layout rules (like Punto Switcher), returning nil if no translations were made.
  def to_ru
    to_language :ru
  end

  # Changing the contents of string to russian language by keyboard layout rules (like Punto Switcher), returning nil if no changes were made.
  def to_ru!
    to_language! :ru
  end

  # Translates string to specified language by keyboard layout rules (like Punto Switcher), returning nil if no translations were made.
  # @param [Symbol] name language to translate to
  # @return [String] translated by keyboard layout string to specified language, nil if translation fails
  def to_language(name)
    result = ""

    source = SUBS[name]
    return nil if source.nil?

    self.each_char do |c|
      sub = source[c]
      return nil if sub.nil?

      result << sub
    end

    result
  end
  alias_method :to_lang, :to_language

  # Changing the contents of string to specified language by keyboard layout rules (like Punto Switcher), returning nil if no changes were made.
  # @param [Symbol] name language to translate to
  # @return [String] translated by keyboard layout string to specified language, nil if translation fails
  def to_language!(name = :ru)
    result = to_language name
    result.nil? ? nil : replace(result)
  end
  alias_method :to_lang!, :to_language!

end