#language:pt

@login
Funcionalidade: Remover filme
    Para que eu possa manter o catálogo atualizado
    Sendo um gestor de catálogo que encontrou um título cancelado/indesejado ou que não tem uma boa aceitação pelo público
    Posso remover este item

    @rm_movie
    Cenário: Confirmar exclusão

        Dado que "dbz" esta no catálogo
        Quando eu solicito a exclusão
        E eu confirmo a solicitação
        Então este item deve ser removido do catálogo

    Cenário: Cancelar exclusão

        Dado que "10 coisas que eu odeio em você" esta no catálogo
        Quando eu solicito a exclusão
        Mas cancelo a solicitação
        Então este item deve permanecer no catálogo