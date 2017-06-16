class SiteController < ApplicationController
  def search
    def search
      artists = Artist.where("name like ?", "%#{params[:term]}%")
      albums = Album.where("name like ?", "%#{params[:term]}%")
      labels = Label.where("name like ?", "%#{params[:term]}%")
      @results = artists + albums + labels
    end
  end
end
