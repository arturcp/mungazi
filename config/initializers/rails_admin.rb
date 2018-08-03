RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Article do
    edit do
      include_all_fields
      field :content, :ck_editor
    end

    show do
      include_all_fields
      field :content do
        pretty_value do
          value.html_safe
        end
      end
      configure :slug do
        hide
      end
    end

    list do
      configure :content do
        hide
      end
    end
  end

  config.model User do
    list do
      configure :reset_password_sent_at do
        hide
      end
      exclude_fields :remember_created_at, :current_sign_in_at, :current_sign_in_ip,
        :last_sign_in_ip, :last_sign_in_at
    end
  end

  config.model Video do
    list do
      include_all_fields
      fields :url do
        formatted_value do
          "<iframe src=\"https://www.facebook.com/plugins/video.php?href=#{CGI.escape(value)}&show_text=0&width=560\" width=\"100%\" height=\"100%\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>".html_safe
        end
      end
    end

    show do
      include_all_fields
      fields :url do
        formatted_value do
          "<iframe src=\"https://www.facebook.com/plugins/video.php?href=#{CGI.escape(value)}&show_text=0&width=560\" width=\"100%\" height=\"500px\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allowFullScreen=\"true\"></iframe>".html_safe
        end
      end
    end
  end

  config.excluded_models << Ckeditor::AttachmentFile
  config.excluded_models << Ckeditor::Picture
  config.excluded_models << Ckeditor::Asset

  config.authenticate_with do
    warden.authenticate! scope: :user
  end

  config.current_user_method(&:current_user)
end
