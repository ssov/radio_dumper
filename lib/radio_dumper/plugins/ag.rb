require "net/http"
require "uri"
require "base64"

RadioDumper::Plugin.create :ag do
  def dump(options)
    `rtmpdump -v \
      --rtmp 'rtmp://fms-base1.mitene.ad.jp/agqr/aandg2' \
      --live \
      --stop #{RadioDumper.config.time} \
      --flv #{RadioDumper.output('AG')}`
  end
end
