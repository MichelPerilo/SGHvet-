
class LoginController < ApplicationController

  def index
    set_valores
    @user = Usuario.new(username: 'michel.perilo', password: '33254422').save


    if request.post?
      case (params['commit'])
        when 'Entrar'
          @usuario_atual = Usuario.where(username: @valores['username']).first
          if @usuario_atual.password == @valores['password']
            flash[:notice] = 'Logado'
            #redirect_to :action => ''
          else
            flash[:notice] = 'Usuário ou senha incorretos'
          end


      end
    end

  end


  def set_valores
    @valores = params['login'] || {}
    @valores['username'] = '' if @valores['username'].blank?
    @valores['password'] = '' if @valores['password'].blank?

  end
end