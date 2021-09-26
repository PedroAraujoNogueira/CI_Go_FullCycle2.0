package main

import "testing"

// Para rodar um teste em Go basta irmos no diretório do nosso pacote e digitar no terminal
// o comando "go test". Com isso, Go encontrará todos os arquivos com o sufixo "_test.go"
// e todas as funções iniciadas com Test e as executará.
func TestSoma(t *testing.T) {

	total := Soma(15, 15)

	if total != 30 {
		t.Errorf("Resultado da soma é inválido. Resultado esperado: %d, resultado obtido: %d", 30, total)
	}
}
