class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_project (instance)
    backed_projects << instance
    instance.backers << self 
  end
end
