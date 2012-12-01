# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  is_in_progress :boolean          default(TRUE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Game < ActiveRecord::Base
  has_many :players
end
