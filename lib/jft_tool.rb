module JftTool
  require 'open-uri'
  require 'openssl'

  def self.grab_html
    doc = Nokogiri::HTML(open('http://jftna.org/jft/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    text = doc.css("table")
    date = text.css('tr')[0].css('td')[0].css("h2")[0].text
    heading = text.css("tr")[1].css("td")[0].css("h1")[0].text
    print date
    print heading
    data = {date: date, heading: heading}
  end
end