module ApplicationHelper
  def login_helper(style = '')
    # null object pattern
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper
    if session[:source]
      content = "Thanks for visiting me from #{session[:source]}"
      content_tag(:p, content, class: 'source-msg')
    end
  end

  def copyright_generator
    "#{Time.now.year} | <b>Carlos Gómez</b>. All rights reserved.".html_safe
  end

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: tech_news_path,
        title: 'Tech News'
      }
    ]
  end

  def nav_helper(style: '', tag_type: '')
    if tag_type.empty?
      nav_links = ''
      nav_items.each do |item|
        nav_links << 
        "<a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a>"
      end
    else
      nav_links = ''
      nav_items.each do |item|
        nav_links <<
        "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
      end
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      js add_gritter(alert, title: "Carlos Gómez", sticky: false)
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Carlos Gómez", sticky: false)
  end

end