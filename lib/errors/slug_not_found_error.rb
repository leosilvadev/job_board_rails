class SlugNotFoundError < StandardError
  
  attr_reader :slug
  
  def initialize(slug)
    @slug = slug
  end

end