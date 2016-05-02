class Artist < ActiveRecord::Base
  has_many :albums


  #custom methods

  def display_name
    return "" if name.nil?
    # converts 'The Clash' to 'Clash, The'
    return name unless name[0,4] == 'The '

    name.gsub(/^The\s+/, '') + ', The'
  end
end
