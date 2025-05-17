class Post < ApplicationRecord
 validates :title, presence: true, length: {maximum: 20}
 validates :begin, presence: true
 validates :end, presence: true
 validates :schedule_memo, length: {maximum: 500}


end
