# Desafio FullStack

## Objetivo

Objetivo desse desafio é avaliar as competências técnicas do candidato, de solução de problemas e organização de código.

## Desafio

Criar um fork desse repositório onde irá criar uma aplicação onde seja possível listar, editar e apagar os dispositivos salvos, 
além de poder cadastrar novos dispositivos, seguindo as regras descritas abaixo e o mais fiel ao protótipo possível.\
Você terá o prazo de 7 dias para desenvolver esse desafio, após finalizar o desenvolvimento deverá criar um pull request para o repositório 
e enviar via email ou whatsapp, e no prazo de até 7 dias terá uma call de feedback sobre o seu desafio.
 
### Portótipo frontend

- [Figma](https://www.figma.com/design/TIIxe8nlTFmAKbdDmPDPIW/Untitled?node-id=0-1&t=ieKcTpnRoFCNhoS9-1)
- No protótipo acima tem duas páginas:
 - Home onde é mostrado a listagem dos dispositivos
 - Cadastrar onde tem o formulário


### Regras frontend

- Projeto deve ser feito em Angular (qualquer versão entre versão 12 e 19)
- Ao editar, apagar ou cadastrar um dispositivo, deve mostrar um modal de confirmação da ação (ex: dispositivo alterado com sucesso, dispositivo salvo com sucesso, falha ao apagar o dispositivo, etc).
- Ao editar, apagar ou cadastrar um dispositivo, na tela inicial onde lista todos os dispositivos, a lista deve ser atualizada sempre que realizar uma das ações anteriormente descritas.
- A tela de cadastrar e editar o dispositivo, deve compartilhar o mesmo componente, podendo ser uma página ou modal, porém ao cadastrar o fomrulário inicia vazio e ao editar já vem com os dados preenchido.
- Os campos do cadastrar e editar devem ser:
  - Marca (obrigatório) (select)
  - Modelo (obrigatório) (select)
  - Processador (obrigatório) (select)
  - Memoria (obrigatório) (input texto)
  - Tela (obrigatório) (input texto)
  - Armazenamento (obrigatório) (input texto)
  - Dispositivo novo (não obrigatório) (input radio)
  - Descrição (não obrigatório) (textarea)
- Os campos marca e modelo devem ser um select (combobox) onde deve lista apenas as marcas e modelos cadastrados no banco de dados
  - Marcas disponíveis: Samsung, Lenovo, Apple, Dell
- Só devem aparecer os modelos da marca selecionada
  - Modelos disponíveis: Galaxy Book4 (samsung), Galaxy Book5 (samsung), Ideapad S145 (lenovo), Ideapad 3 (lenovo), Macbook Air (apple), Macbook Pro (apple), Inspirion 15 (dell) e Inspirion 17 (dell)
- Os campos obrigatórios devem ter validação utilizando reactiveForm do angular e devem mostrar uma mensagem de erro caso o usuário tente salvar e não tenha preeenchido um campo obrigatório.
- Os campos obrigatórios devem ter um "*" na label afim de demonstrar que o campo é obrigatório

### Regras backend

- Projeto deve ser feito utilizando Nodejs, Python ou Java.
- Deve-se ter 6 endpoints:
  - GET (/device) onde lista todos os dispositivos salvos
  - POST (/device) onde se salva um novo dispositivo
  - PUT (/device/{id}) onde edita um dispositivo
  - DELETE (/device/{id}) onde se remove um dispositivo
  - GET (/brand) onde retorna lista de Marcas disponíveis
  - GET (/model) onde retorna lista de modelos disponiveis (pode-se usar query params para filtrar apenas os modelos por marca)
- No endpoint POST deve-se validar todos os dados recebidos, sendo validado os dados obrigatórios e não obrigatorios, também validando se os campos marca e modelo estão corretos.
- Deve-se utilizar um banco relacional (MySql ou Postgres)
- Em caso de erro, os endpoints devem retornar uma mensagem formatada e em português

## Diferenciais

São itens desejáveis, porém não obrigatórios, que pode melhorar sua avaliação

- Frontend:
  - Utilizar frameworks como Angular Material, PrimeNG, Tailwind.
  - Utilizar animações e transições
  - Utilizar loading
  - Desabilitar botões de ações após o clique durante a execução da ação
  - Utilizar ESLint
  - Testes unitários
 
- Backend:
  - Utilizar POO
  - Utilizar ORM com entities e relacionamentos corretos
  - Testes unitários
 
- Geral:
  - Criar docker-compose com todos os containers necessários para rodar a aplicação
