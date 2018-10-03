class CouponsController < ApplicationController
<<<<<<< HEAD

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create 
      coupon = Coupon.new
      coupon.coupon_code = params["coupon"]["coupon_code"]
      coupon.store = params["coupon"]["store"]
      coupon.save
      redirect_to coupon_path(coupon)
  end

=======
    before_action :get_post, only: [:show]

    def index
        @coupons = Coupon.all
    end

    def show

    end

    def new

    end

    def create
        c = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupon_path(c)
    end

    def delete

    end

    private

    def get_post
        @coupon = Coupon.find_by(id: params[:id])
    end
>>>>>>> 3ae9dd057aff1fbc19cf94f77c0f402693c7b930
end