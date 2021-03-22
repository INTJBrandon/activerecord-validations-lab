class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title && !record.title.match?(/(Won't Believe)|(Secret)|(Top \d)|(Guess)/)
            record.errors.add(:title, "must be clickbait")
        end
    end
end