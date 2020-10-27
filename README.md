# TMDBServices
Esse módulo implementa uma abstração para algumas das chamadas de APIs do [The Movie DB](<https://www.themoviedb.org/?language=pt-BR>). Ele foi pensada com base no projeto [iOS Movies](<https://github.com/BrenoAquino/ios-movies>). A camada de _Interfaces_ já abstrai o controle de chamadas em paralelo para conseguir exibir a _Home_ e o _Content Detail_. A modularização dessa camada foi feita para ser reaproveitado a implementação dos _requests_ e o controle das chamadas em paralelo tanto pra um aplicativo iOS, tvOS e macOS. 

O TMDBServices é responsável somente pela integração direta com as APIs do The Movie DB. Essa modularização permite que a manutenção da integração com as APIs e regras de négocios em relação a aquisição dos dados seja unificada para todas as frentes de _Apple Things_.

## Requisitos
| Sistema Operacional | Versão |
| ---- | ----
| iOS | > 10.0
| tvOS | > 10.0
| macOS | > 10.14

## Instalação
A instalação desse módulo é feita somente pelo __Swift Package__.

## Dependência
| Tipo | Nome | Versão |
| ---- | ---- | ---- |
| **Networking** | [Moya](<https://github.com/Moya/Moya>) | 14.0.0
| **Tests** | [Quick](<https://github.com/Quick/Quick>) | 3.0.0
| **Tests** | [Nimble](<https://github.com/Quick/Nimble>) | 9.0.0

