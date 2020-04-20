# Ex13_MAC0210
Algoritmo para encontrar todas as raízes de uma dada função f (de uma variável) a partir dos métodos da secante e da bissecção.<br/>
<strong>Entradas:</strong><br/>
<ul>
  <li><strong>a:</strong> Início do intervalo [a,b] onde devem ser procuradas as raízes da dunção f;</li>
  <li><strong>b:</strong> Fim do intervalo [a,b] onde devem ser procuradas as raízes da dunção f;</li>
  <li><strong>nprobe:</strong> Quantidade de intervalos [a<sub>i</sub>, b<sub>i</sub>] de tamanho (b-a)/nprobe onde deve-se verificar a existência de uma raiz. Todo os intervalos tem a mesma amplitude e os métodos de busca de raízes só são acionados se as extremidades de um dado intervalo [a<sub>i</sub>, b<sub>i</sub>] tem f(a<sub>i</sub>) e f(b<sub>i</sub>) com sinais opostos.</li>
</ul>
