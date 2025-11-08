# 📋 Aplicativo de Lista de Tarefas (To-Do App)

## 📱 Descrição Geral
Este projeto consiste em um aplicativo **mobile** desenvolvido em **Dart** utilizando o **framework Flutter**.  
O objetivo é aplicar os conceitos e técnicas aprendidos na disciplina, resultando em uma aplicação simples, mas completa e funcional.

O app permite que o usuário **adicione, edite, marque como concluída e remova tarefas**, oferecendo uma interface intuitiva e prática para o gerenciamento do dia a dia.

---

## 🎯 Objetivos do Projeto
- Aplicar os **conceitos de programação mobile** aprendidos em aula.
- Implementar uma **arquitetura organizada** e **boas práticas de código**.
- Criar uma **interface funcional e responsiva** com Flutter.
- Utilizar **armazenamento local** para manter as tarefas salvas.
- Demonstrar o uso de **componentes interativos**, **estados** e **persistência de dados**.

---

## 🧩 Funcionalidades do Aplicativo
1. **Adicionar Tarefa:**  
   O usuário pode criar uma nova tarefa informando o título e uma breve descrição.
2. **Editar Tarefa:**  
   Permite alterar o conteúdo de uma tarefa já existente.
3. **Marcar como Concluída:**  
   As tarefas podem ser marcadas como concluídas, alterando seu estado visual.
4. **Remover Tarefa:**  
   O usuário pode excluir tarefas individualmente.
5. **Armazenamento Local:**  
   As tarefas são salvas localmente no dispositivo, garantindo que não se percam ao fechar o app.
6. **Interface Intuitiva:**  
   Layout simples, limpo e adaptável a diferentes tamanhos de tela.

---

## 🧠 Conhecimentos Aplicados (baseados na disciplina)
Durante o desenvolvimento, foram aplicados os seguintes conceitos e técnicas vistas em aula:

- **Linguagem Dart:** Estruturas de controle, funções, classes e listas.  
- **Framework Flutter:**  
  - Criação de telas (Widgets Stateless e Stateful);  
  - Navegação entre telas;  
  - Manipulação de estado com `setState`;  
  - Componentes visuais (`ListView`, `TextField`, `Checkbox`, `Button`, etc.);  
  - Organização de layout utilizando `Column`, `Row` e `Container`.
- **Persistência de Dados:**  
  - Utilização do pacote `shared_preferences` para salvar dados localmente.  
- **Boas Práticas:**  
  - Separação de código em arquivos organizados;  
  - Uso de comentários explicativos;  
  - Padronização de nomes e funções.

---

## 🏗️ Estrutura do Projeto
O projeto é dividido da seguinte forma:

lib/
│
├── main.dart # Arquivo principal do aplicativo
├── pages/
│ ├── home_page.dart # Tela principal com a lista de tarefas
│ └── add_task_page.dart # Tela para adicionar/editar tarefas
│
├── models/
│ └── task_model.dart # Modelo de dados da tarefa
│
└── services/
└── storage_service.dart # Serviço responsável pelo armazenamento local

yaml
Copiar código

---

## 🚀 Passo a Passo do Desenvolvimento

1. **Criação do Projeto**
   - Criar um novo projeto Flutter no VS Code ou Android Studio com o comando:
     ```
     flutter create lista_tarefas
     ```
2. **Configuração Inicial**
   - Organizar a estrutura de pastas (`pages`, `models`, `services`);
   - Criar o modelo da tarefa (`TaskModel`).

3. **Construção da Interface**
   - Criar a tela principal (`HomePage`) com uma lista dinâmica;
   - Adicionar botões de ação (adicionar, editar, excluir).

4. **Gerenciamento de Estado**
   - Utilizar `setState` para atualizar a lista de tarefas em tempo real;
   - Implementar função para marcar tarefas como concluídas.

5. **Armazenamento Local**
   - Adicionar a dependência `shared_preferences` no `pubspec.yaml`;
   - Criar o serviço `StorageService` para salvar e carregar as tarefas do dispositivo.

6. **Refinamento da Interface**
   - Adicionar ícones, cores e espaçamento para melhor visualização;
   - Testar o comportamento em diferentes tamanhos de tela.

7. **Testes e Publicação**
   - Testar todas as funcionalidades (criar, editar, remover, marcar);
   - Publicar o código no **GitHub** e o vídeo de demonstração no **YouTube**.

---

## 💾 Tecnologias Utilizadas
- **Linguagem:** Dart  
- **Framework:** Flutter  
- **Persistência de Dados:** Shared Preferences  
- **IDE:** Visual Studio Code / Android Studio  
- **Controle de Versão:** Git e GitHub

---

## 📹 Demonstração em Vídeo
O vídeo apresenta:
- A explicação breve do código e estrutura no GitHub;
- O aplicativo em execução, demonstrando todas as funcionalidades mínimas (MVP);
- Explicação clara, objetiva e audível sobre o funcionamento do app.

*(Link do vídeo será adicionado aqui após gravação e upload no YouTube.)*

---

## 👨‍💻 Contribuidores
- **Wolfgang** – RGM: 38492741  
- **Kevin** – RGM: XXXXXXXX  

---

## 🧾 Observações Finais
Este projeto foi desenvolvido como parte da **avaliação prática da disciplina**, atendendo às exigências do professor e às regras do documento oficial.  
O código está hospedado publicamente neste repositório GitHub, conforme solicitado, e demonstra os conhecimentos adquiridos em aula de forma funcional, simples e completa.
