def reformat_languages(languages)

  reformated_hash = {}

    languages.each do |type, languages_hash| # puts OO and entire hash of languages
      if type == :oo
        languages_hash.each do |language, data|
        reformated_hash[language] = data
        reformated_hash[language][:style] = []
        reformated_hash[language][:style] = [] << :oo
        end
      else 
        languages_hash.each do |language, data|
        reformated_hash[language] = data
        reformated_hash[language][:style] = []
        reformated_hash[language][:style] = [] << :functional  
        end
    end
    end
    
  reformated_hash
end

