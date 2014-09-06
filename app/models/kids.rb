class Kids < ActiveRecord::Base
  belongs_to :clan
  attr_accessible :believer_id, :clan_id, :name, :kid_id
end
