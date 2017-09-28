# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/index'
      [200, { 'Content-type' => 'text/html' }, ["Estás en el Index!"]]
    elsif @url == '/otro'
      [200, { 'Content-type' => 'text/html' }, ['Estás en otro landing!']]
    else
      [200, { 'Content-type' => 'text/html' }, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new
