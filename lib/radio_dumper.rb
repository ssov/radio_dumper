require "radio_dumper/version"

module RadioDumper
  class RadioDumper::Error
    class Plugin
      class NotFound < Exception; end
    end
  end

  class << self
    class Configure
      attr_accessor :directory, :time
    end
    @@config = nil

    def output(format)
      time = Time.now
      "#{@@config.directory}/#{format}-#{time.strftime("%Y-%m-%d-%H-%M")}.flv"
    end

    def dump(plugin, options)
      @@plugin = plugin
      Plugin.eval(plugin, options)
    end

    def configure(&block)
      @@config = Configure.new
      block.call(@@config)
    end

    def config
      @@config
    end
  end

  class Plugin
    class << self
      @@plugins = {}
      def create(name, &block)
        @@plugins[name] = block
      end

      def eval(name, options)
        name = name.to_sym
        raise RadioDumper::Error::Plugin::NotFound unless @@plugins.member?(name)
        @@plugins[name].call
        dump(options)
      end
    end
  end

  # load plugins
  Dir.glob(File.expand_path("radio_dumper/plugins", File.dirname(__FILE__)) + "/*.rb"){|file| require file}
end
