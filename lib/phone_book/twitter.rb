module PhoneBook
  class Tweet
    attr_accessor :text, :date
    
    def initialize(text, date)
      @text = text
      @date = date
    end

    def to_json(options={})
      { "text": @text, "date": @date }
    end
  end
end