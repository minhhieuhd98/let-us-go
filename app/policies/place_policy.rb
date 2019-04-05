class PlacePolicy < ApplicationPolicy
    attr_reader :current_user, :place
  
    def initialize(current_user, place)
      @current_user = current_user
      @place = place
    end
  
    def index?
      @current_user.admin?
    end

    def new?
      @current_user.admin?
    end 
    
    def edit?
      @current_user.admin?
    end 

    def show?
      true
    end
  
    def create?
      @current_user.admin?
    end

    def update?
      @current_user.admin?
    end

    def destroy?
      @current_user.admin?
    end
end
