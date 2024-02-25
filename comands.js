/*--------------------------
--//Lista de Comando SQL//--
--------------------------*/

// [VAR]: Declara uma variável. (Obs.: VAR é menos comum hoje em dia,
// sendo substituído po [LET] e [CONST] na maioria dos casos).
var nome = "João";

// [LET]: Declara uma variável em escopo de bloco.
let idade = 25;

// [CONST]: Declara uma constante, cujo valor não pode ser alterado.
const PI = 3.14;

// [FUNCTION]: Define uma funação.
function saudacao(nome) {
    return "Olá, " + nome + "!";
}

// [IF/ELSE]: Estruturas condicionais para tomada de decisão.
let hora = 10;
if (hora < 12) {
    console.log("Bom dia!");
} else if (hora >= 12 && hora < 18) {
    console.log("Boa tarde!");
} else {
    console.log("Boa noite!");
}

// [FOR]: Loop de repetição que executa um bloco de código um número específico de vezes.
for (let i = 0; i < 5; i++) {
    console.log("Número; " + i);
}

// [ARRAYS]: Estrutura de dados que armazena uma coleção de elementos.
let frutas = ["Maça", "Banana", "Laranja"];

// [STRING METHODS]: Médtodos que permitem manipular strings.
let frase = "Olá, mundo!";
console.log(frase.length); //Retorna o comprimento da string.
console.log(frase.toUpperCase()); //Converte a string para maiúsulas.
console.log(frase.ondex0f("mundo")); //Retorna o índice da primeira ocorrência da palavra "mundo".

// [DOM MANIPULATION]: Manipulação do Document Object Model (DOM), geralmente usado em conjunto com
// HTML para interagir com elementos da página web.
document.getElementById("botao").addEventListener("click", function () {
    alert("Botão clicado!");
})

