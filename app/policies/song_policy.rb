class SongPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def create?
      true
    end

    def update?
      user_is_owner?
    end

    def destroy
      user_is_owner?
    end

    private

    def user_is_owner?
      record.user == user
    end

  end
end