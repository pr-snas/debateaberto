# Debate Aberto

# Depêndencias
1. [Ruby 1.9.x](http://ruby-lang.org)
2. [RubyGems](http://rubygems.org/pages/download) *caso não tenha sido instalado junto com o ruby*
3. [Bundler](http://gembundler.com/)
4. [Node.js](http://nodejs.org/)

# Como utilizar
1. Clone o repostório git:  
  `git clone https://marcosmlopes@github.com/marcosmlopes/debateaberto.git`  
  *O repositório também pode ser baixado através da URL: <https://github.com/marcosmlopes/debateaberto/tarball/master>*
2. Mude para o diretório do repositório:  
  `cd dadosaberto`
3. Baixe as dependências do projeto:  
  `bundle install`
4. Mova o arquivo database.example.yml para database.yml e preencha as configurações de acordo com o banco de dados a ser utilizado:  
  `mv /caminho/do/projeto/config/database.example.yml /caminho/do/projeto/config/database.yml`  
  *Caso deseje ativar o login com facebook, twitter ou google apps mova e edite os arquivos facebook.example.yml, twitter.example.yml, google_apps.example.yml respectivamente.*
6. Rode o servidor web:  
  `rails server`
7. Visite <http://localhost:3000>

# Licensa
Este projeto utiliza a licensa GNU Affero General Public License. Veja o arquivo COPYING para maiores informações.

# Contribuir
Sinta-se livre para contribuir enviando pull-requests, melhorando a documentação ou relatando bugs.
