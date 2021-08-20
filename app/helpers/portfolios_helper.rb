module PortfoliosHelper
  def portfolio_image(portfolio_item, style)
    if portfolio_item.images.attached?
      image_tag(portfolio_item.images.first, class: style)
    else
      image_tag(portfolio_item.thumb_image, class: style)
    end
  end
end
