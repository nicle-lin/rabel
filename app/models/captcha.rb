require 'digest'

class Captcha < ActiveRecord::Base
  def self.generate_key
    Digest::SHA1.hexdigest(['captcha', Time.now.to_s].join)
  end
end
