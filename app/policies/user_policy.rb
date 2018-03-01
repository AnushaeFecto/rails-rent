class UserPolicy < ApplicationPolicy

  def show?
    true
  end

  def edit?
    true
  end

  def update?
    edit?
  end

end
