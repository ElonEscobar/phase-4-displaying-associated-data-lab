class ItemsController < ApplicationController
    def index
        item = Item.all
        render json: item, except: [:created_at, :updated_at, :user_id], include: :user
    end
end
