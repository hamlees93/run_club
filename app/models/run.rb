class Run < ApplicationRecord
    after_initialize :init_date

    def init_date
      self.date ||= Time.now.strftime("%m/%d/%Y")
    end
end
