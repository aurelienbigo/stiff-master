class OrderPolicy < ApplicationPolicy


  def show?
    record.user == user
  end

  def create?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
