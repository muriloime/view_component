# frozen_string_literal: true

class NestedComponentPreview < ViewComponent::Preview
  layout "admin"

  def default
    render(OuterComponent.new) do |c|
      c.button { render(InnerComponent.new) }
    end
  end
end
