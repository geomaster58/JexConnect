module JftTool
  require 'open-uri'
  require 'openssl'

  def self.grab_html
    doc = Nokogiri::HTML(open('http://jftna.org/jft/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    text = doc.css("table")
    date = text.css('tr')[0].css('td')[0].css("h2")[0].text
    heading = text.css("tr")[1].css("td")[0].css("h1")[0].text
    page_num = text.css("tr")[2].css("td")[0].text
    sub_heading = text.css("tr")[3].css("td")[0].css("i")[0].text
    basic_text_page_num = text.css("tr")[4].css("td")[0].text
    content = text.css("tr")[5].css("td")[0].text
    just_for_today = text.css("tr")[6].css("td")[0].text
    copy_right = text.css("tr")[7].css("td")[0].css("a")[0].text
    data = {date: date, heading: heading, page_num: page_num, sub_heading: sub_heading, basic_text_page_num: basic_text_page_num, content: content, just_for_today: just_for_today, copy_right: copy_right}
  end
end