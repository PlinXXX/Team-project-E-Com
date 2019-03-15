class UserMailer < ApplicationMailer
  
  def congratulation_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    @order = user.orders.last

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Achat effectué avec succès !') 
  end

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end

  def confirmation_email(user)
    @user = user
    
    @confirmation = Confirmation.where(email: @user.email).first

    mail(to: @user.email, subject: 'Account confirmation') 
  end
end
