class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end
  def create
    Tweet.create(image: tweet_params[:image], text: tweet_params[:text])
    return redirect_to :root
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    return redirect_to :root
  end
  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    return redirect_to :root
  end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :text)
  end

end
