Feature:​ auto-avaliação
    As a​ aluno matriculado em uma turma
    I want to​ ​ auto-avaliar meu desempenho na disciplina
    So that​ o professor e eu possamos ver a diferença entre as opiniões.
    
/* Cenarios de preenchimento bem sucedido da feature auto-avaliacao*/

Scenario:​ Auto-avaliação do aluno
    Given ​ eu estou na página “auto-avaliação do aluno”
    And​ eu estou logado no perfil de “Aluno” com nome “Paulo A.”And​ todas as 3 metas já foram preenchidas por “Paulo B.” que retém perfil “Professor”
    And​ na meta “Entender conceitos de requisitos” o conceito “MA” foi atribuído por “Paulo B.”
    And​ na meta “Especificar requisitos” o conceito “MPA” foi atribuído por “Paulo B.”
    And​ na meta “Entender conceitos de gerência de configuração” o conceito “MA” foi atribuído por “Paulo B.”
    When​ eu informo o conceito “MA” em todas as metas com exceção da meta ”Entender conceitos de requisitos” a qual informei conceito “MPA”
    And​ nenhuma meta ficou não atribuída
    And​ eu confirmo que as metas estão corretas
    Then​ eu vejo uma mensagem de confirmação
    And​ eu estou na página “auto-avaliação do aluno”

Scenario:​ Auto-avaliação do aluno
    Given​ o aluno “Paulo A.” está armazenado no sistema com conceitos “MA,MPA,MA” para as metas
    When ​ eu envio para o sistema as informações “MA,MA,MPA” para conceitos de auto-avaliação do aluno
    Then o sistema retorna um codigo de confirmacao “1”
    And o aluno “Paulo A.” está armazenado no sistema com conceitos “MA,MPA,MA” para as metas e “MA,MA,MPA” para a auto-avaliação das metas