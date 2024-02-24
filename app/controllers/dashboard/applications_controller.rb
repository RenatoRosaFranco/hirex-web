# frozen_string_literal: true

module Dashboard
  class ApplicationsController < HomeController
    before_action :set_application, only: [:show]

    def index
    end

    def show
    end

    private

    def set_application
      @application = current_user.applications.find(params[:id])
    end
  end
end
