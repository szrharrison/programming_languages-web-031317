require 'pry'
def reformat_languages(languages)
  # your code here
  reformatted_hash = {}
  languages_names = []
  styles = []
  languages.each do |style, languages_hash|
    languages_hash.each do |language_name, type_hash|
      languages_names << language_name
    end
  end

  languages_names.each do |language_name|
    languages.each do |style, languages_hash|
      if languages[style].key?( language_name )
        reformatted_hash[language_name] = languages_hash[language_name]
        styles << style
      end
    end
    reformatted_hash[language_name].merge!( { style: styles } )
    styles = []
  end
  reformatted_hash
end
