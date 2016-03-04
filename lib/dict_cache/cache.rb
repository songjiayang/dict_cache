module DictCache
  class Cache
    class << self
      def date_cache(date=nil)
        @date = date
        file = [cache_folder, cache_file].join('/')
        if File.exist? file
          puts File.read(file)
        else
          warn "No cache at date: #{@date}"
          exit 1
        end
      end

      def clear
        `rm -rf #{cache_folder}/*`
      end

      def with_cache
        folder = cache_folder
        tty_file = [folder, tty_buffer].join('/')
        $stdout = File.new(tty_file, 'w')
        yield
        $stdout.flush
        $stdout = STDOUT
        translate_text = File.read(tty_file)
        puts translate_text
        file = [folder, cache_file].join('/')
        File.open(file, 'a') { |f| f.puts translate_text + "\n" }
      end

      private

      def cache_folder
        folder = File.expand_path('~/.dict_cache')
        Dir.mkdir(folder) unless File.directory?(folder)
        folder
      end

      def cache_file
        @date ||= Time.now.localtime.strftime("%Y-%m-%d")
        @date + '.txt'
      end

      def tty_buffer
        '.tty'
      end
    end
  end
end
