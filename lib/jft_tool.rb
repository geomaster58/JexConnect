module JftTool
  require 'open-uri'
  require 'openssl'

  def self.grab_html
    doc = Nokogiri::HTML(open('http://jftna.org/jft/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    text = doc.css("table")
    date = text.css('tr')[0].css('td')[0].css("h2")[0].text
    print date
    data = {date: date}
    print data
  end
end