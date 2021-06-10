## Lista de tarefas

Features implementadas:

- Implemente a visualização da tabela conforme o link informado acima;
- Insira em cada componente da tabela os dados `name`, `atomic_mass`, `number` e `symbol` conforme a tabela do link;
- Precisamos que você atribua uma cor para cada elemento, conforme sua categoria/família;
- Ao clicar num elemento, o site deve navegar para uma nova página que contém somente o elmento clicado;
- Exiba na página do elemento uma versão aumentada do mesmo, e inclua informação de níveis de energia `shells` do json.
- Também na página do elmento monte uma tabela completa com os dados extras do json.

## Como rodar a aplicação

Seguindo os passos abaixo, você conseguirá rodar sem problemas:

- Visite o https://gitpod.io e clique no link trynow
- Coloque o endereço do respositório que você acabou de criar

Ao avançar ele pedirá que faça login com sua conta do GitHub e pronto, seu ambiente ficará pronto depois de alguns minutos.

Executar os seguintes comandos antes de rodar a aplicação no gitpo.io. Isso de faz necessário pelo fato da gitpo.io usar a versão 2.7.1 do rails e o o projeto a versão 2.6.6.

```bash
rvm install 2.6.6
gem install bundler:2.2.4
```

Quando o ambiente estiver pronto, você presirá rodar os comandos:

```bash
bundle install
yarn install
```

Para rodar a aplicação:

```bash
foreman start
```

## Dica importante

O Gitpod pode não conseguir rotear a chamada para a aplicação. Quando isso acontecer ele informará uma linha semelhante a que apresento abaixo.

```ruby
config.hosts << "3000-amaranth-chinchilla-y3wjba3h.ws-us08.gitpod.io"
```