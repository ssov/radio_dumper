RadioDumper::Plugin.create :nhk1 do
  def dump(options)
    opts = {
      :rtmp => "rtmpe://netradio-r1-flash.nhk.jp",
      :playpath => "NetRadio_R1_flash@63346",
      :app => "live",
      :swfUrl => "http://www3.nhk.or.jp/netradio/files/swf/rtmpe.swf?ver.2"
    }
    RadioDumper.rtmpdump(opts, "NHK1")
  end
end

RadioDumper::Plugin.create :nhk2 do
  def dump(options)
    opts = {
      :rtmp => "rtmpe://netradio-r2-flash.nhk.jp",
      :playpath => "NetRadio_R2_flash@63342",
      :app => "live",
      :swfUrl => "http://www3.nhk.or.jp/netradio/files/swf/rtmpe.swf?ver.2"
    }
    RadioDumper.rtmpdump(opts, "NHK2")
  end
end

RadioDumper::Plugin.create :nhkfm do
  def dump(options)
    opts = {
      :rtmp => "rtmpe://netradio-fm-flash.nhk.jp",
      :playpath => "NetRadio_FM_flash@63343",
      :app => "live",
      :swfUrl => "http://www3.nhk.or.jp/netradio/files/swf/rtmpe.swf?ver.2"
    }
    RadioDumper.rtmpdump(opts, "NHKFM")
  end
end
