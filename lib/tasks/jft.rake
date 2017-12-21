namespace :jft do
  desc "TODO"
  task grab_html: :environment do
    require 'open-uri'
    require 'openssl'
    doc = Nokogiri::HTML(open('http://jftna.org/jft/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    text = doc.css("table")
    date = text.css('tr')[0].css('td')[0].css("h2")[0].text
    print date
    Jft.create(date: date)
  end

end
