# Projeto 3D SandPlay
# **Autores: Ariane Ruben Calaça Di Menezes, Gabriel dos Santos Dourado, Josef Augusto Oberdan Souza Silva, Juliana Santos de Souza Hannum e Kárita Cecília Rodrigues Silva**
# **Orientador: Talles Marcelo Gonçalves de Andrade Barbosa**
# **Universidade: Pontifícia Universidade Católica de Goiás**
# **Trabalho de Conclusão de Curso**
# **Projeto: 3D Sandplay - Um Sistema com Interface Tangível para Pessoas com Síndrome de Down**

---

## **Descrição do Projeto**
Neste projeto é apresentado um sistema ARSandplay chamado de 3D Sandplay. Ele disponibiliza uma **interface tangível** que pode ser utilizada como **reforçador** para o **desenvolvimento intelectual** e da **coordenação motora**. De forma exploratória, lança-se a hipótese que o uso do 3D Sandplay pode facilitar a **compreensão de conceitos abstratos** e, ao mesmo tempo, **promover a integração sensorial** em pessoas com Síndrome de Down. Este projeto foi inspirado e adaptado do [Augmented Reality Sandbox](https://arsandbox.ucdavis.edu/) desenvolvido pela [UC Davis](http://idav.ucdavis.edu/~okreylos/ResDev/SARndbox/). É uma adaptação parcial do projeto [SARndbox](https://github.com/KeckCAVES/SARndbox) de Oliver Kreylos em [openframeworks](https://openframeworks.cc/) e também é uma adaptação do [ofxKinectProjectorToolkit](https://github.com/genekogan/ofxKinectProjectorToolkit) de Gene Kogan.

---
## **Requisitos do Sistema**
- Antes de iniciar, garanta que você tenha:
 - PC com placa de vídeo GeForce GTX 1070 TI ou superior.
 - Windows 10 (64 bits).
 - Microsoft Visual Studio C++ 2015.
 - Xbox 360 Kinect 3D.
 - Projetor LCD.
 - Caixa com areia branca de aquário.

## **Estrutura do Projeto**
- A estrutura foi organizada da seguinte forma:
### **Hardware:**
 - Sensor Microsoft Kinect: versão 1.0 (Microsoft, 2010).
 - Projetor multimídia LED Projetor: modelo YG-300 (Salange Technology, 2014).
 - Dimensões da caixa de areia: 45 centímetros de comprimento, 33 centímetros de largura e 7 centímetros de altura.
 - Estrutura metálica galvanizada: 90 centímetros de altura.
   
![projeto TCC2](https://github.com/user-attachments/assets/063f9d94-d1ae-4f5b-b95a-d1498a71aeed)


### **Software:**
 - ARSandbox.
 - Magic Sand.
 - Visual Studio Code (© Microsoft Corporation).
 - Zadig.

---

## **Funcionalidades**
### **Interface Gráfica**
- Exibe objetos gráficos na caixa de areia por meio do projetor.
- Muda o cenário de acordo com a captura de movimentos feitos na região de interesse (caixa de areia).
- Executa, de forma automática, a calibração utilizando apenas os dados gerados pelo sensor e pelo projetor multimídia.

## **Casos de Uso**
Os casos de uso deste trabalho possibilitam:
- Aplicar testes e coletar informações necessárias (uso de questionário) para avaliar a execução das atividades propostas aos voluntários.
- Avaliar a capacidade de replicação das imagens projetadas em um monitor de vídeo pelos voluntários.
- Analisar se o voluntário manifestou resistência (desconforto ou rejeição) ou interesse ao manipular a areia na caixa.

### **Fluxograma e Processos**
1. Processos de teste:
   
![image](https://github.com/user-attachments/assets/44679011-342e-46c9-b1c1-290827085b02)

2. Relatório de atividade de teste:
  
![image](https://github.com/user-attachments/assets/90f0404a-12b1-428f-b9c3-3af4a21d11f3)

3. Teste executado por um voluntário:
     
![3D_SANDPLAY_2x_optimized](https://github.com/user-attachments/assets/d7f2518b-61c9-4ef2-9e21-1c634a50fbb8)

---

## **Como Rodar o Projeto**
## 🧰 Passo 1 – Instalação dos Componentes Físicos

### 1. Conectar o Hardware
- Conecte o **Kinect** e o **Projetor** ao computador.

### 2. Instalar Drivers com Zadig
- Baixe o Zadig: [https://zadig.akeo.ie/](https://zadig.akeo.ie/)
- Execute o Zadig e:
  - Selecione no menu:
    - `Xbox Camera`
    - `Xbox Audio`
    - `Xbox Motor`
  - Escolha o driver `libusb-win32 (v1.2.6.0)`
  - Clique em **Install Driver**
  - **Repita 3 vezes**, uma para cada componente

### 3. Referência Adicional
- [Freenect GitHub](https://github.com/OpenKinect/libfreenect)
- [ofxKinect GitHub](https://github.com/ofTheo/ofxKinect)

### 4. Problemas de Detecção
- Instale o **Kinect V1 SDK 1.0** e execute novamente o Zadig, se necessário

---

## 💻 Passo 2 – Edição do Código Fonte

### 1. Instalar o Visual Studio
- [Visual Studio C++ 2015](https://www.microsoft.com/en-us/download/details.aspx?id=48145)

### 2. Baixar o Software
- [Magic-Sand (GitHub)](https://github.com/thomwolf/Magic-Sand/releases/tag/v1.5.4.1)

### 3. Adicionar OpenFrameworks (Opcional)
- [OpenFrameworks](https://openframeworks.cc/)

---

## 🎯 Passo 3 – Calibrar a Aplicação

1. **Achate a areia** na caixa de areia
2. Ative a **visualização de profundidade** em:  
   `Avançado > Exibir Exibição de Profundidade do Kinect`
3. Clique em **Calibração**
4. **Desenhe a região da areia** com o mouse na visualização
5. Pressione **“Calibrar Kinect e Projetor automaticamente”**  
   - Um padrão de **xadrez** será projetado
6. **Cubra a caixa** com papelão claro quando solicitado
7. Clique em **OK** para projetar novos padrões sobre o papelão
8. Confirme que a **janela de status** indica calibração OK

---

## 🟢 Passo 4 – Executar a Aplicação

1. Pressione **barra de espaço** ou clique em **RUN**
2. Verifique:
   - **Mapa colorido com linhas de contorno** na areia
   - **FRAMERATE em torno de 60 FPS**
3. Execute a aplicação.

---

## 📸 Exemplo de Uso

![image](https://github.com/user-attachments/assets/50de8fc9-dceb-4669-ba27-9c3660642e1a)

---

## 🔗 Licenças

Este projeto segue os termos da licença do repositório original [Magic-Sand](https://github.com/thomwolf/Magic-Sand).

### **Linguagem de Programação**
- **C++**: Linguagem de programação principal usada no desenvolvimento do projeto..  
  Licença: Depende do compilador utilizado (geralmente livre, como GCC/Clang ou MSVC).
  Copyright: © Desenvolvedores do compilador (ex: Free Software Foundation para GCC, Microsoft para MSVC).

### **Tecnologias e Bibliotecas Utilizadas**
- **openFrameworks**  
  Framework C++ para aplicações criativas, usado para lidar com gráficos, áudio, vídeo e entrada de dispositivos.  
  **Licença**: MIT License  
  **Copyright**: © openFrameworks contributors

- **ofxKinect**  
  Addon do openFrameworks para comunicação com sensores Kinect.  
  **Licença**: MIT License  
  **Copyright**: © Theo Watson e contribuidores do addon

- **libfreenect**  
  Biblioteca usada para acessar os dados do Kinect (driver alternativo).  
  **Licença**: Apache License 2.0  
  **Copyright**: © OpenKinect community
  
  ---

### **Ferramentas**
- **Visual Studio Code 2015**: IDE utilizada para compilar e rodar o projeto no Windows. 
  Licença: Licença proprietária gratuita para uso pessoal e educacional (Community Edition). 
  Copyright: © Microsoft Corporation.
  
- **Zadig**: Ferramenta usada para instalar drivers USB, necessária para fazer o Kinect funcionar.  
  Licença: GPL v3.
  Copyright: © Akeo Consulting.

---

## **Trabalhos Futuros**
As possíveis melhorias e expansões do sistema incluem:
- **Novos Casos de Uso**: Adicionar outros casos de uso relacionados a área da saúde.
- **Testes com outros Componentes de Sistema**: Realizar teste com componentes diferentes de hardware e software, priorizando a portabilidade e usabilidade.

---

## **Apresentação PowerPoint do TCC**
O slide da apresentação se encontra no arquivo do projeto nomeado como: "MIT URTC 2019.pptx"
[MIT URTC 2019.pptx](https://github.com/user-attachments/files/20091417/MIT.URTC.2019.pptx)

---

## **Vídeo Apresentação do TCC**
- Vídeo de apresentação do projeto sendo executando está disponível no canal do YouTube da PUC TV Goiás nomeado como: 
"Robô que dança ajuda alunos do Projeto Alfa Down." https://www.youtube.com/watch?v=UQaTI5Wlw-c&t=190s&ab_channel=PUCTVGOI%C3%81S

---

Link para leitura do artigo científico: https://www.ijcaonline.org/archives/volume178/number45/30850-2019919360/

 ---

Github Magic Sand: https://github.com/thomwolf/Magic-Sand/blob/master/README.md
