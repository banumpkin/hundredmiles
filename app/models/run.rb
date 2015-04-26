class Run < ActiveRecord::Base
	belongs_to :user
	validates :distance, presence: true
	validates :date, presence: true
end
