require "net/http"
require "uri"
require "base64"

RadioDumper::Plugin.create :ag do
  def dump(options)
    opts = {
      :rtmp => 'rtmp://fms-base1.mitene.ad.jp/agqr/aandg2'
    }
    RadioDumper.rtmpdump(opts, "AG")
  end
end
