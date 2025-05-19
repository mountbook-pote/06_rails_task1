class Post < ApplicationRecord
 validates :title, presence: true, length: {maximum: 20}
 validates :begin, presence: true
 validates :end, presence: true
 validates :schedule_memo, length: {maximum: 500}
 validate :enddate_earlier_than_begindate

  private
    def enddate_earlier_than_begindate
      if self[:end] != nil && self[:begin] != nil && self[:end] < self[:begin]
        errors.add(:end, "は開始日以降の日付にしてください")
      end
    end
end
