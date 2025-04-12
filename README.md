# 🛑 Ativador Educacional com Shell Reversa

Este projeto foi criado com o objetivo de **educar e conscientizar** sobre os riscos de utilizar ativadores de Windows disponíveis na internet.  
Apesar de parecerem inofensivos, esses scripts podem ser facilmente modificados para executar comandos maliciosos, como uma **shell reversa**, dando acesso total ao seu sistema.

> ⚠️ **Este repositório é apenas para fins educativos. Não use este código em ambientes reais ou para qualquer atividade não autorizada.**

---

## 🎯 Objetivo

- Demonstrar como um script de ativação (ex: estilo MAS/MassGrave) pode ser manipulado por um atacante.
- Exibir, na prática, como uma **linha a mais** pode abrir uma porta para acesso remoto.
- Ajudar estudantes e profissionais de Segurança da Informação a entenderem na prática esse vetor de risco.

---

## 📁 Conteúdo do Repositório

| Arquivo         | Descrição                                                                 |
|------------------|---------------------------------------------------------------------------|
| `ativador.bat`   | Script que simula um ativador de Windows com shell reversa embutida.     |
| `shell.ps1`      | Script PowerShell que cria a conexão reversa com o atacante.             |
| `README.md`      | Este arquivo com explicações, instruções e contexto educacional.         |

---

## 🧪 Como testar (ambiente de laboratório)

1. **No Kali Linux (máquina atacante):**

   Suba um servidor HTTP simples para servir o `shell.ps1`:

   ```bash
   sudo python3 -m http.server 80

   Deixe o listener escutando conexões:
   nc -lvnp 4444

2.	**Na VM com Windows (máquina alvo):**
  Execute o ativador.bat.
    Isso simula o comportamento de um usuário desavisado que apenas “clica para ativar”.
  	
3.	**O terminal no Kali deverá receber a conexão e abrir uma shell reversa.**

👀 O que observar

	•	O .bat contém um comando PowerShell embutido que faz download e executa o shell.ps1 automaticamente.
	•	Nos testes que fiz, utilizei o Antivirus Defender e ele não identificou o comportamento malicioso.
	•	A janela do PowerShell fica oculta (-windowstyle hidden), dificultando a detecção pelo usuário final.

 📹 Vídeo relacionado

**Este conteúdo foi apresentado no canal do YouTube:**
🔗 [https://youtu.be/s8lVbKQxpR8]

🚨 Aviso legal

Este código é fornecido apenas para fins educativos e de conscientização em segurança da informação.
O uso indevido pode ser ilegal.
Você é o único responsável pelo uso deste conteúdo. Não me responsabilizo por qualquer ação incorreta derivada do uso deste código.


✅ Licença

Este repositório está licenciado sob a licença MIT.
Uso livre para fins educacionais. Modifique e estude à vontade, mas não utilize para fins maliciosos.

Feito com responsabilidade por Douglas Lockshield 🛡️

