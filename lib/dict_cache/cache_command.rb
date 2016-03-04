module DictCache
  class CacheCommand
    def self.parse(command)
      c, arg = command.split(':')
      case c
      when nil, 'date'
        Cache.date_cache(arg)
      when 'clear'
        Cache.clear
      when '-h', '--help'
        puts 'DictCache is a gem to help to cache your daliy translate words.'
        puts
        puts 'Usage:'
        puts '    dict_cache -h/--help'
        puts '    dict_cache command [arguments...]'
        puts
        puts 'Commands:'
        puts '    dict_cache date:2016-03-04           puts 2016-03-04 daliy translated words to console, date:2016-03-04 missing means today'
        puts '    dict_cache clear                     cler all cache files'
      end
    end
  end
end
