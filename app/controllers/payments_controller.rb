class PaymentsController < ApplicationController
    def create
        token = params[:stripeToken]
        # Create the charge on Stripe's servers - this will charge the user's card
        @product = params[:product_id]
        # Takes in hidden value from _stripe_checkout_button.html.erb
        @user = current_user
        begin
          charge = Stripe::Charge.create(
            amount: @product.price.to_i*100
            currency: "usd",
            source: token,
            description: params[:stripeEmail]
          )

          if charge.paid
            Order.create(product_id, order_id, total)
          end

        rescue Stripe::CardError => e
          # The card has been declined
          body = e.json_body
          err = body[:error]
          flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
        end
        redirect_to product_path(product)
      end
end
