require "clsx"
require "rails"

module Clsx
  class Railtie < Rails::Railtie
    initializer "clsx.action_view" do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send :include, Helper
      end
    end
  end

  module Helper
    def clsx(*)
      CLSX.clsx(*)
    end
  end
end
