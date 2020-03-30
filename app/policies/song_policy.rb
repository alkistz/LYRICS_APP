class SongPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    user_is_owner?
  end

  def dashboard?
    true
  end

  private

  def user_is_owner?
    record.user == user
  end

end
