require 'bing_dictionary'

module DictCache
  class Dict
    def self.translate(word)
      Cache.with_cache do
        BingDictionary::Base.translate(word)
      end
    rescue StandardError
      error 'Translate Error: check your word is valid.'
      exit 1
    end
  end
end
