# Debate Aberto
A possibilidade de transmitir eventos em tempo real e criar um ambiente de interação nem sempre é aproveitada pelas organizações por falta de uma plataforma tecnologica que seja simples e funcional. Muitas vezes acabam adotando sites baseados em softwares proprietários, cheios de propagandas e com interfaces poluidas.

A plataforma para incorporação de vídeos e realização de chats DebateAberto.org busca atender essa demanda de forma simples. Instale no seu servidor e rode seu evento de forma pública e interativa. A interface do DebateAberto.org destaca o espaço do vídeo e do chat, permitindo ainda a integração do "twitter stream" com a hashtag do evento e um espaço para postar a programação do dia (os participantes no chat sempre perguntam "qual a próxima palestra" ou "quem está falando" rsrsrsrs).

Aviso aos navegantes: O projeto DebateAberto.org ainda não integra um servidor gerador do sinal de áudio e vídeo (ICECAST por exemplo). Para ele funcionar é necessário que o vídeo esteja sendo gerado em outro sistema.

Para ver ele funcionando, acesse [DebateAberto.org] (http://debateaberto.org)

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
  `cp config/database.example.yml config/database.yml`
  `cp config/config.example.yml config/config.yml`
  *Caso deseje ativar o login com facebook, twitter ou google apps mova e edite os arquivos facebook.example.yml, twitter.example.yml, google_apps.example.yml respectivamente.*
6. Configure o projeto em `config/config.yml`
7. Cria o banco de dados `rake db:create db:migrate`
8. Rode o servidor web:
  `rails server`
9. Visite <http://localhost:3000>

# Licença
Este projeto utiliza a licença GNU Affero General Public License. Veja o arquivo COPYING para maiores informações.

# Contribuir
Sinta-se livre para contribuir enviando pull-requests, melhorando a documentação ou relatando bugs.
