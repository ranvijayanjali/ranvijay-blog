class StaticPagesController < ApplicationController
  def apps
  end

  def home
  		@posts = Post.where(:status=>"published").paginate(page: params[:page], per_page: 10)
  end
 

  def contact_us
  end
end
