module PostsHelper
  def post_length_in_minutes(body)
    if body.blank?
      min = 0 
    else 
      min = body.split(" ").size / 250
    end
    if min == 0
      I18n.t('site.less_than_a_minute')
    else
      I18n.t('site.min_read', {min: min})
    end
  end

end
