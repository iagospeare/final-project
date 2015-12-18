class Result < ActiveRecord::Base
  belongs_to :account
  belongs_to :workout

end
