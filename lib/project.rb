class Project
  attr_accessor :backers
  attr_reader :title

  def initialize (title)
    @title = title
    @backers = []
  end

  def add_backer (instance)
    backers << instance
    instance.backed_projects << self 
  end
end
