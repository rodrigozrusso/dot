
" Configuração do Ambiente de Edição {{{
" ----------------------------------------------------------------------------
" Use VIM padrão é muito melhor
" Valores padrão para algumas opções são adequados ao Vim, não Vi.
" ----------------------------------------------------------------------------
   set nocompatible
" ----------------------------------------------------------------------------
" Numerando as linhas do arquivo, isto é, qualquer arquivo carregado é
" Editado com a numeração de linhas ligada
" ----------------------------------------------------------------------------
   set number
" ----------------------------------------------------------------------------
" Exibe o modo atual de operações do VI (Inserção ou comandos)
" Mostra o modo que você esta.
" ----------------------------------------------------------------------------
   set showmode
" ----------------------------------------------------------------------------
" Recua cada linha para o mesmo nível da linha superior
" ----------------------------------------------------------------------------
   set autoindent
" ----------------------------------------------------------------------------
" Aqui definimos uma chave para a alternância entre os modos:
"
"  -- INSERT (paste) --          e             -- INSERT --
"
"  O primeiro não segue o padrão de linha indentada enquanto o segundo
"  é o modo normal de trabalho. Digitar <F2> alterna entre os dois modos
" ----------------------------------------------------------------------------
   set pastetoggle=<F2>
" ----------------------------------------------------------------------------
" régua: mostra a posição do cursor
" ----------------------------------------------------------------------------
   set ruler
" ----------------------------------------------------------------------------
" Caso o arquivo seja modificado FORA do vim ele é atualizado DENTRO do vim
" ----------------------------------------------------------------------------
   set autoread
" ----------------------------------------------------------------------------
" tabstop: número de colunas para o comando <TAB>
" A tecla TAB no vim vem padronizada com 8 espaços, sendo assim, quando
" editar um código em c, c++, pascal ou outra linguagem qualquer o texto
" do código torna-se algo meio confuso, principalmente quando o código é
" longo e possui inúmeros escopos. Para tanto, podemos mudar o tamanho do
" TAB, isto é do número de espaços gerados pelo mesmo, utilizando o comando
" 'set tabstop=3' que transforma o tamanho do TAB de 8 para 3.
" ----------------------------------------------------------------------------
   set ts=3
" ----------------------------------------------------------------------------
" Tabs são convertidos para espaços por padrão
" ----------------------------------------------------------------------------
   set expandtab
"  set noexpandtab
" ----------------------------------------------------------------------------
" ShiftWidth: número de colunas deslocadas pelo comando > ou <
" ----------------------------------------------------------------------------
   set sw=3
" ----------------------------------------------------------------------------
" SHortMessages: encurta as mensagem da régua
" ----------------------------------------------------------------------------
"  set shm=filmnrwxt
" ----------------------------------------------------------------------------
" ShowMatch: Toda vez que você fecha um parêntese, colchete
" ou chave, o Vi mostra onde este foi aberto. Caso  não haja
" nenhum aberto para este, deixa em vermelho parênteses ou
" chaves que não têm um par.
" ----------------------------------------------------------------------------
   set sm
" ----------------------------------------------------------------------------
" mostra os comandos sendo executados
" ----------------------------------------------------------------------------
   set showcmd
" ----------------------------------------------------------------------------
" Configurações de filetype
" Check :filetype para status atual 
" ----------------------------------------------------------------------------
"   filetype on       
"   filetype plugin on
"--no--  filetype indent on
" ----------------------------------------------------------------------------
" reporta ações com linhas no rodapé
" ----------------------------------------------------------------------------
"   set report=0
" ----------------------------------------------------------------------------
" Usando <BkSpc> para deletar linha
" ----------------------------------------------------------------------------
"   set backspace=eol,start,indent
" ----------------------------------------------------------------------------
" Tecla Backspace volta 4 espaços quando estiver numa indentação.
" ----------------------------------------------------------------------------
"   set softtabstop=3
" ----------------------------------------------------------------------------
" Permite mover com as setas para áreas onde não tem texto.
" ----------------------------------------------------------------------------
"  set ve=all
" ----------------------------------------------------------------------------
" (window) Define o número de linhas deslocadas com os comandos
"  ^B (Ctrl+B) e ^F (Ctrl+F)
" ----------------------------------------------------------------------------
 "  set window=10
" ----------------------------------------------------------------------------
" Define o número de linhas deslocadas com os comandos
" ^U (Ctrl+U) e ^D (Ctrl+D)
" ----------------------------------------------------------------------------
 "  set scroll=5
" ----------------------------------------------------------------------------
" Em caso de se cometer um comando inválido aciona-se um alarme visual
" visual-bells
" ----------------------------------------------------------------------------
"  set visualbell
" ----------------------------------------------------------------------------
" Em caso de se cometer um comando inválido aciona-se um alarme sonoro
" error-bells
" ----------------------------------------------------------------------------
" Para habilitar
"  set eb
" Para desabilitar
   set noerrorbells
" ----------------------------------------------------------------------------
" Habilita o salvamento automático (parcial ou completo)
" ----------------------------------------------------------------------------
"  set autowrite 
"  set autowriteall
" ----------------------------------------------------------------------------
" Envia mais caracteres ao terminal, melhorando o redraw de janelas.
" ----------------------------------------------------------------------------
"   set ttyfast
" ----------------------------------------------------------------------------
" Antes de sobrescrever um arquivo mantém um backup do mesmo
"
" Por exemplo, após salvar um arquivo de nome Alfa.txt, o vim cria uo
" outro arquivo chamado Alfa.txt~ com a configuração anterior do arquivo
" antes do  mesmo ser alterado
" ----------------------------------------------------------------------------
   set bk
" ----------------------------------------------------------------------------
" Usar a pasta pessoal de backup
" É onde será escrito o arquivo *~ 
" Nessa configuração, primeiro usa o diretório ~/.vim/.backup, se não existir
" usa o diretório corrente
" ----------------------------------------------------------------------------
   set backupdir=~/.vim/.backup/,.
" ----------------------------------------------------------------------------
" Habilita a mudança de coluna quando movimenta-se através das linhas
" ----------------------------------------------------------------------------
"  set startofline
" ----------------------------------------------------------------------------
" Diretórios onde o VIM busca por arquivos
" ----------------------------------------------------------------------------
   set path=.,./include/,/usr/include/,/usr/local/bin/,~/.vim/scripts/
" ----------------------------------------------------------------------------
" Uma configuração interessante da barra de status é defini-la com tamanho de 
" duas linhas e fundo com cor azul e fonte branca.
" ----------------------------------------------------------------------------
" Mostra duas linhas
   set laststatus=2
" Fundo azul e fonte branca (foi adicionando ao meu código de cores nativas)
"  highlight StatusLine ctermfg=blue ctermbg=white
" ----------------------------------------------------------------------------
" Configurando o formato da régua
" Novos arquivos possuem uma data de modificação em um certo dia muito tempo
" no passado. Ignore. 
" ----------------------------------------------------------------------------
"  set statusline=%t%m%r%h%w
"                 \%=[FORMATO=%{&ff}]
"                 \[TIPO=%Y]
"                 \[ASCII=%03b]
"                 \[HEX=%02B]
"                 \[\ XY=%04v,%04l]
"                 \[%03P]
"  set statusline=%<%F%h%m%r%h%w%y\ ft:%{&ft}\ ff:%{&ff}\ 
"                 \Modificado:\ %{strftime(\"%a\ %d/%B/%Y\ %H:%M:%S\",
"                 \getftime(expand(\"%:p\")))}%=\ coluna:%04v\ linha:%04l\ 
"                 \total:%04L\ hex:%03.3B\ ascii:%03.3b\ %03P\
   set statusline=%<%F%h%m%r%h%w%y\ ft:%{&ft}\ ff:%{&ff}\ 
                  \Modificado:\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}
                  \%=\ coluna:%04v\ linha:%04l\ 
                  \total:%04L\ hex:%03.3B\ ascii:%03.3b\ %03P\ 
" ----------------------------------------------------------------------------
" Mostra o nome do arquivo na parte superior do prompt
" ----------------------------------------------------------------------------
   set title
" ----------------------------------------------------------------------------
" Alguns tipos de arquivos devem ser ignorados pelo Vim.
" ----------------------------------------------------------------------------
   set wildignore=*.o,*.obj,*.bak,*.exe,*.dll,*.com,*.class,*.au,*.wav,*.ps,\
                 \*.avi,*.wmv,*.flv,*.djvu,*.pdf,*.chm,*.dvi,*.svn/,*~
" ----------------------------------------------------------------------------
" Definindo e trabalhando com histórico da linha de comando
" ----------------------------------------------------------------------------
   set cedit=<Esc>
" ----------------------------------------------------------------------------
" (history) Define o tamanho do arquivo de histórico, onde <valor> é o
" número de linhas de comandos a serem armazenados (5000).
" ----------------------------------------------------------------------------
   set hi=5000
" ----------------------------------------------------------------------------
" Guarda posição do cursor e histórico da linha de comando :
" ----------------------------------------------------------------------------
"   set viminfo='100,\"1000,:40,%,n~/.viminfo
"   au BufReadPost * if line("'\"")|execute("normal `\"")|endif
"   autocmd BufReadPost *
"    \ if line("'\"") > 0 && line("'\"") <= line("$") |
"    \   exe "normal g`\"" |
"    \ endif
" ----------------------------------------------------------------------------
" Tamanho da barra de título
" ----------------------------------------------------------------------------
   set titlelen=78
" ----------------------------------------------------------------------------
" Exibe a barra de título no formato configurado
"
" Exemplo1:
" ---------
" formato:"nome="NomeArq.EXT [se alterado mostrar +]
"  set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)
"
" Exemplos2:
" ----------
"  set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p\")})%)%(\ %a%)
" ----------------------------------------------------------------------------
" -------------------------- [Formato] ---------------------------------------
" [Nome=nome]       buffer={current}   [Total de linhas=999]                 '
" ----------------------------------------------------------------------------
" Se editar múltiplos arquivos
" ----------------------------------------------------------------------------
" [Nome=nome]  buffer={current} [{current} of {max})]  [Total de linhas=999] '
" ----------------------------------------------------------------------------
"  set titlestring=%<Nome=%t%m%r%h%w
"   \%=
"   \BUFFER=%n
"   \%(\ %a%)
"   \%28([Total\ de\ linhas=%L]%) 
 "  set titlestring=%<%F%h%m%r%h%w\ \ \ \ \ \ coluna:%04v\ \ \
"                    \ linha:%04l\ de\ %04L\ \ \ \ %03P\ 
" ----------------------------------------------------------------------------
" Define qual é o tamanho da margem direita para a quebra de linhas
"  automáticas, wrapmargin
" ----------------------------------------------------------------------------
"   set wm=10
" ----------------------------------------------------------------------------
" Quando esta opção encontra-se ativa o VIM lê o arquivo, e qualquer
" comando de configuração que estiver nas cinco primeiras linhas e cinco
" ultimas do arquivo, serão executados. Um exemplo disso são os arquivos
" do help, onde as últimas linhas a apresentam a seguinte sintaxe:
" 'vim:tw=78:ts=8:ft=help:norl:'
" A opção nomodeline assegura que esse recurso estará desabilitado
" ----------------------------------------------------------------------------
"  set modeline
   set nomodeline 
" ----------------------------------------------------------------------------
" Utilizando a barra de espaço para mover  uma página
" ----------------------------------------------------------------------------
"  noremap <Space> <PageDown> 
" ----------------------------------------------------------------------------
" }}}

" Configurações de cores, fonte, visual, etc {{{
" ----------------------------------------------------------------------------
" Ligando configurações de cor, isto é, faz com que o vim busque no
" diretório /usr/share/vim/vim62/syntax os arquivos de configuração de
" cores de acordo com o tipo de arquivo que é aberto
" ----------------------------------------------------------------------------
   syntax on
" ----------------------------------------------------------------------------
" Sintaxe para fundo escuro (dark) ou claro (light) 
" ----------------------------------------------------------------------------
   set background=dark
"  set background=light
" ----------------------------------------------------------------------------
" Mapeamento para trocar o tipo de background
" Pode fazer com que a função SwitchColorSchemes() pare de funcionar
" dependendo do tema que estiver sendo usado ao acionar esse mapeamento
" Para quem não usa temas, não há qualquer problema.
" ----------------------------------------------------------------------------
   map  <S-F6> <ESC>:set background=light<CR>
   map  <C-S-F6> <ESC>:set background=dark<CR>
" ----------------------------------------------------------------------------
" Função para trocar o tema de cores
" A primeira linha refere-se ao esquema padrão
" ----------------------------------------------------------------------------
   "colorscheme adaryn
   colorscheme dante
" ----------------------------------------------------------------------------
" Define a cor para o menu contextual dos complementos
" ----------------------------------------------------------------------------
"  highlight Pmenu ctermbg=13 guibg=Gray
"  highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White
"  highlight PmenuSbar ctermbg=7 guibg=DarkGray
"  highlight PmenuThumb guibg=Black    
" ----------------------------------------------------------------------------
"  Cor da numeração lateral
" ----------------------------------------------------------------------------
"  hi LineNr     guifg=pink     ctermfg=lightMagenta
   hi LineNr     guifg=green    ctermfg=lightGreen
" ----------------------------------------------------------------------------
" Destaca a linha e coluna sobre o cursor e define a cor
" Não há como especificar a cor e conseguir algo bom para todos os ambientes
" ----------------------------------------------------------------------------
   set cursorline
"  hi CursorLine ctermbg=blue cterm=none
"  hi CursorLine ctermbg=black cterm=none 
"  set cursorcolumn
"  hi CursorColumn ctermbg=4 
" ----------------------------------------------------------------------------
" Configuração de fonte (tamanho e nome) para o GVim
" ----------------------------------------------------------------------------
   if has("gui_running")
     if has("gui_gtk2")
       " Para GTK2
       " Ajustando o tamanho da fonte de acordo com o tamanho da resolução
       " Adicionando no ~/.bashrc as linhas :
       " #--------------------------------------------------------------------
       " # Definindo variável de screen para o vim
       " #--------------------------------------------------------------------
       "  export SCREENSIZE=$(xdpyinfo 2>/dev/null2>/dev/null | grep 'dim'\
       "                     | sed -e 's/x.*//g' -e 's/^.*[a-z]: *//g')
       " #--------------------------------------------------------------------
       " A beleza dessas linhas é que elas observam o tamanho da resolução do
       " computador cliente, e não do host. Apenas o tamanho horizontal é 
       " utilizado como referência, ou seja, 1280x1024, apenas 1280 é 
       " verificado para determinar o tamanho da fonte. Isso não funciona bem
       " em monitores cujo o maior tamanho seja o vertical.
       if exists("$SCREENSIZE")
        " se existe a variável $SCREENSIZE
        if ($SCREENSIZE > 1300)
          " se $SCREENSIZE é maior que 1300
          set guifont=monospace\ 14
        elseif ($SCREENSIZE < 850)
          " se $SCREENSIZE é menor que 850
          set guifont=monospace\ 8
        else
          " se $SCREENSIZE é maior que 850 e menor que 1300
          set guifont=monospace\ 10
        endif " Existe SCREENSIZE, e com base nele define-se guifont 
       else
        " caso a variável $SCREENSIZE não exista, use...
        set guifont=monospace\ 10
       endif  " Define tamanho se existe ou não $SCREENSIZE 
     elseif has("x11")
       " Para GTK1
       set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
     elseif has("gui_win32")
       " Para Windows
       set guifont=Luxi_Mono:h12:cANSI
     else
       " Para todos as outras gui use ...
       set guifont=monospace\ 12
     endif " Conclui a verificação do tipo de interface gráfica
   endif " Conclui sobre a existência de uma interface gráfica
" ----------------------------------------------------------------------------
" }}}

" Configurando a busca {{{
" ----------------------------------------------------------------------------
" Ativa o recurso de colorir, dando realce a pesquisa de palavra(s)
" que estiver em andamento. O hlsearch abreviado chama-se hls
" ----------------------------------------------------------------------------
   set hlsearch
" ----------------------------------------------------------------------------
" O método de busca pode ser incrementado com a adição do comando
" incsearch". A pesquisa torna-se diferenciada e dinâmica em tempo de
" pesquisa, isto é, antes do usuário entrar com o comando <enter> a fim
" de buscar os resultados, os mesmos já aparecerão em sua tela.
" ----------------------------------------------------------------------------
   set incsearch
" ---------------------------------------------------------------------------- 
" Se começar uma busca em maiúsculo ele habilita o case 
" ---------------------------------------------------------------------------- 
"  set smartcase    
" ----------------------------------------------------------------------------
" Que tal trocar a cor do texto ?
" daquela seleção que aparece quando você procura algo com o comando " / ?
" é fácil, basta definir a cor do componente da sintaxe. Ah sim, a
" opção  hls (veja acima) deve estar ativa.
" você pode colocar as cores que quiser, em inglês. Note que é
" ctermBG e FG, de  background e foreground  (fundo e letra). E veja
" também que o IncSearch (busca enquanto você digita) é invertido!
" ----------------------------------------------------------------------------
"  hi    Search ctermbg=yellow ctermfg=red
"  hi IncSearch ctermbg=green  ctermfg=cyan
" ----------------------------------------------------------------------------
" No vim temos diversas opções para  modificar seu comportamento
" através do comando set. para ver  todas as opções  disponíveis, faça
" :set all. Diversas  opções já vêem  ligadas por  padrão, então
" vamos mais opções de busca
" IncrementedSearch, HighLightedSearch, IgnoreCase e SmartCaSe
" ----------------------------------------------------------------------------
   set ic scs            
" ----------------------------------------------------------------------------
" Limpando o registro de buscas
" ----------------------------------------------------------------------------  
   nno <S-F11> <Esc>:let @/=""<CR>
" ----------------------------------------------------------------------------  
" }}}

" Abreviações, correções e jeitinhos para o modo de inserção {{{
" ----------------------------------------------------------------------------
" Mapeando abreviações para o modo de inserção
" ----------------------------------------------------------------------------   
   iab linux              GNU/Linux
   iab gnome              GNOME
   iab kde                KDE
   iab latex              LaTeX
" ----------------------------------------------------------------------------
" Mapeando correções para o modo de inserção
" ---------------------------------------------------------------------------- 
   iab tambem             também
   iab vc                 você
   iab assenção           ascenção
   iab assougue           açougue
   iab corrijir           corrigir
   iab definitamente      definitivamente
   iab deshonestidade     desonestidade
   iab díficil            difícil
   iab distingeu          distingue
   iab ecessão            exceção
   iab ecessões           exceções
   iab excessão           exceção
   iab Excesões           exceções
   iab excurção           excursão
   iab exijir             exigir
   iab nao                não
   iab noã                não
   iab portugu6es         português
   iab portugês           português
   iab portugues          português
   iab dividos            divididos
   iab lisensa            licença
   iab licenssa           licença
   iab licensa            licença
   iab Licensa            Licença
   iab drives             drivers
   iab drive              driver
   iab Drive              Driver
   iab Drives             Drivers
" ----------------------------------------------------------------------------
" caso o teclado esteja desconfigurado use:
" ----------------------------------------------------------------------------
"  iab 'a á
"  iab 'A Á
"  iab 'e é
"  iab 'E É
"  iab 'i í
"  iab 'I Í
"  iab 'o ó
"  iab 'O Ó
"  iab ~a ã
"  iab ~A Ã
"  iab ^a â
"  iab ^A Â
"  iab `a à
"  iab `A À
"  iab ,c ç
"  iab ,C Ç
"  iab ^e ê
"  iab ^E Ê
"  iab ^o ô
"  iab ^O Ô
"  iab ~o õ
"  iab ~O Õ
"  iab 'u ú
"  iab 'U Ú"
" }}}

" Configurando o dicionário e corretor ortográfico {{{
" ----------------------------------------------------------------------------
" Utilizando o dicionário do aspell
" ----------------------------------------------------------------------------
   cmap ckBR w!<CR>:!aspell check %<CR>:e! %<CR>
   cmap ckEN w!<CR>:!aspell --lang=en check %<CR>:e! %<CR>
" ----------------------------------------------------------------------------
" Verificação automática do arquivo (spell check interno ao vim)
" Para baixar o dicionário: http://www.broffice.org/verortografico/baixar
" Descompacte e no diretório abra o vim. Nele execute:
" :mkspell pt pt_BR
" cp pt*.spl ~/.vim/spell/
" Adicione no .vimrc as linhas:
" ----------------------------------------------------------------------------
  set spelllang=pt
  map <S-F8> :set spelllang=en<CR>
  map <C-S-F8> :set spelllang=pt<CR>
  set nospell
  nnoremap <C-F8> :set spell! spell?<CR>
" ----------------------------------------------------------------------------
" Para habilitar a identificação automática das palavras erradas, por tipo de
" arquivo, use:
" ----------------------------------------------------------------------------
"   autocmd BufNewFile,BufRead *.txt setl spell spl=pt
" ----------------------------------------------------------------------------
" Plugin vimspell. Somente foi implementado devido ao funcionamento pouco 
" correto do plugin interno do vim.
" URL: http://www.vim.org/scripts/script.php?script_id=465
" ----------------------------------------------------------------------------
" Para desabilitar o vimspell (habilite apenas quando for usar). 
   let loaded_vimspell = 1
" Configurando a coloração de sintaxe
   highlight link SpellErrors  Error
" Usando o aspell (opções: aspell e ispell)
   let spell_executable = "aspell"
" Restrigindo os idiomas disponíveis
" Para o aspell
"  let spell_language_list = "pt_BR,en"
   let spell_language_list = "en,pt_BR"
" Para o ispell
"   let spell_language_list = "brazilian,english"
" Não quero auto correção ativa. Aguarde eu chamar o programa
   let spell_auto_type = "none"
" ----------------------------------------------------------------------------
" Dicionário para procurar o auto-complemento de palavras
" ----------------------------------------------------------------------------
   set dictionary=~/.vim/dict/words.dic
" ----------------------------------------------------------------------------
" Auto-complemento de palavras
" ----------------------------------------------------------------------------
" Exemplo de como usar o dicionário com mapeamento:
"  (1)  dentro do modo de inserção       -- INSERT --
"  (2)  posicione o cursor sob a palavra a ser completada
"  (3)  ligar dicionário  ao pressionar a seqüência  "<C-D>"
   imap <C-D> <c-x><c-k>
"  (4)  busca palavra no arquivo corrente            "<F8>"
   imap <F8> <c-x><c-i>
"  (5)  o <C-N> trava meu computador, assim, eliminarei ele
"  imap <C-N> <C-P>
" ----------------------------------------------------------------------------
" Quando completar uma palavra seguir a seguinte seqüência de
" busca, sendo primeiro em 1, segundo em 2, ...
"
"  1 - no buffer atual                  (.)
"  2 - buffer de outra janela           (w)
"  3 - outros buffers carregados        (b)
"  4 - buffers não carregados           (u)
"  5 - arquivo de tags                  (t)
"  6 - arquivo de include               (i)
"  7 - dicionário                       (K)
" ----------------------------------------------------------------------------
"  set complete=.,w,b,u,t,i,k     "(*default*)
"  set complete=k,.,w,t,i,b,u 
   set complete=k,t 
"  set complete=.,w,k,t,i
" ----------------------------------------------------------------------------
" Completa a palavra ignorando se é maiúscula ou minúscula
" Não é uma idéia muito boa, se o propósito envolver completar códigos.
" ----------------------------------------------------------------------------
"  set infercase
" ----------------------------------------------------------------------------
" Marca como erro duas palavras idênticas separadas por espaço
" ----------------------------------------------------------------------------
   syntax match DoubleWordErr "\c\<\(\a\+\)\_s\+\1\>"
   hi def link DoubleWordErr Error
" ----------------------------------------------------------------------------
" }}}

" Para melhor uso do vim e seus plugins {{{
" ----------------------------------------------------------------------------
" Utilizando abreviações em linha de comando
" Para tanto vamos utilizar o comando Cab
" ----------------------------------------------------------------------------
   cab W  w
   cab Wq wq
   cab wQ wq
   cab WQ wq
   cab Q  q
" ----------------------------------------------------------------------------  
" Melhorando o trabalho com várias janelas
" ----------------------------------------------------------------------------  
   imap <C-W> <ESC><C-W>
" Teclas de copiar, colar e recortar tipo: <C-C>, <C-V> e <C-X>
" ----------------------------------------------------------------------------
" copy - copiar
" ----------------------------------------------------------------------------
   vmap <C-C> y
" ----------------------------------------------------------------------------     
" paste - colar
" ----------------------------------------------------------------------------
   nmap <C-V> p
   imap <C-V> <C-O>p
" ----------------------------------------------------------------------------
" cut - cortar
" ----------------------------------------------------------------------------
   vmap <C-X> x
" ----------------------------------------------------------------------------
" undo - desfazer
" ----------------------------------------------------------------------------
   noremap <C-Z> u
   inoremap <C-Z> <C-O>u
" ----------------------------------------------------------------------------
" select all - selecionar tudo
" ----------------------------------------------------------------------------
   map <C-a> <esc>ggvG
" ----------------------------------------------------------------------------
" Faz o shift-insert comportar-se semelhante ao Xterm
" Sendo assim você seleciona um bloco de texto com o mouse
" e cola com o botão do meio do mouse
" ----------------------------------------------------------------------------
   map  <S-Insert> <MiddleMouse>
   map! <S-Insert> <MiddleMouse>
" ----------------------------------------------------------------------------
" Atalhos para o plugin Calendar
" ----------------------------------------------------------------------------
" URL: http://www.vim.org/scripts/script.php?script_id=52
" ----------------------------------------------------------------------------  
">>>>>   cab C Calendar
">>>>>   cab CH CalendarH
" ----------------------------------------------------------------------------
" Embaralha a tela para evitar bisbilhoteiros
" ----------------------------------------------------------------------------
   map <F4> ggVGg?
" ----------------------------------------------------------------------------
" Alterna o modo de quebra de linha
" ----------------------------------------------------------------------------
">>>>>   map <leader>b :set wrap! <bar> ec &wrap ? 'wrap' : 'nowrap'<cr>
" ----------------------------------------------------------------------------
" }}}

" Funções, mapeamentos e abreviações para edição de texto em geral  {{{
" ----------------------------------------------------------------------------
" Definindo tamanho da linha, isto é, coluna onde a linha deve ser "quebrada"
" com a inserção de fim de linha (<EOL>, abreviação de  end-of-line).
" Existe a recomendação majoritária de ter textos com quebra inferior ou igual
" a 80. Contudo, 90 é uma boa escolha para uma formatação genérica.
" Especifique outros valores de acordo com interesse
" ----------------------------------------------------------------------------
   set textwidth=120
" ----------------------------------------------------------------------------
" Se uma linha ultrapassar o valor estipulado em textwidth ela será
" mostrada em destaque colocá-la em uma função de liga desliga junto
" com uma que mostre as linhas e colunas de um arquivo em destaque
" ----------------------------------------------------------------------------
   au BufNewFile,BufRead  *  exec 'match Error /\%>' .  &textwidth . 'v.\+/'
" ----------------------------------------------------------------------------
" Fazer a primeiria letra depois de uma pontuação tornar-se maiúscula
" ----------------------------------------------------------------------------
"  :%s/[.!?]\_s\+\a/\U&\E/g 
" ----------------------------------------------------------------------------
" Para remover linhas em branco duplicadas
" ----------------------------------------------------------------------------
"  map ,d my:%s/\(^\n\{2,}\)/\r/g`y
" ----------------------------------------------------------------------------
" Dando destaque para notas
" http://vivaotux.blogspot.com/2009/01/
"                              \ uniformizao-de-espaamento-nos-cdigos.html
" ----------------------------------------------------------------------------
">>>>>   highlight MinhasNotas ctermbg=blue ctermfg=yellow guibg=blue guifg=yellow
">>>>>   match MinhasNotas /[Nn]otas\? \?:/  
" ----------------------------------------------------------------------------
" a função (strftime) é predefinida pelo sistema
" ----------------------------------------------------------------------------
   iab YDATE <C-R>=strftime("%a %d/%b/%Y hs %H:%M")<CR>
   iab HDATE <C-R>=strftime("%a %d/%b/%Y hs %H:%M")<CR> 
" ----------------------------------------------------------------------------
" Adicionando o suporte a calculadora no vim
" ----------------------------------------------------------------------------
"   command! -nargs=+ Calc :py print <args>
"   py from math import *
" ----------------------------------------------------------------------------
" Fechamento automático para parênteses
" ----------------------------------------------------------------------------
"   inoremap ( ()<esc>i
"   inoremap { {}<esc>i
"   inoremap [ []<esc>i
" ----------------------------------------------------------------------------
" Função para atualizar a data da última modificação
" Verifica se existe uma data nas 5 primeiras linhas do documento
" Se não existe, escreve na primeira linha
" Se existe, atualiza a informação
" Essa função gera uma mensagem de erro em documento com menos de 5 linhas
" ----------------------------------------------------------------------------
   fun! LastUpdate()
   mark z
    if getline(0) =~ ".*Last Update:"  ||
     \ getline(1) =~ ".*Last Update:"  ||
     \ getline(2) =~ ".*Last Update:"  ||
     \ getline(3) =~ ".*Last Update:"  ||
     \ getline(4) =~ ".*Last Update:"  ||
     \ getline(5) =~ ".*Last Update:"  
" Atualiza apenas o que estiver nas 5 primeiras linhas
     exec "1,5s/\s*Last Update: .*$/Last Update: " . strftime("%c") . "/"
" Atualiza apenas a linha que contém o cursor
"    exec "s/\s*Last Update: .*$/Last Update: " . strftime("%c") . "/"
    else
"     call append(0, " Last Update: " . strftime("%a %d/%b/%Y hs %H:%M"))
     call append(0, " Last Update: " . strftime("%c"))
    endif
   exec "'z"
   endfun  
" ----------------------------------------------------------------------------
" Abreviação para a função acima
" ----------------------------------------------------------------------------
   cmap data call LastUpdate()<CR>
" ----------------------------------------------------------------------------
" Man: Páginas de manual são na verdade textos em NROFF 
" ----------------------------------------------------------------------------
   au BufNewFile,BufRead *.man set ft=nroff
" ----------------------------------------------------------------------------
" MostraTab: mostra TAB no inicio e espaços no fim das linhas
" ----------------------------------------------------------------------------
   map ,mt /^\t\+\\|\s\+$<cr>
" ----------------------------------------------------------------------------
" PalavrasRepetidas: procura palavras repetidas no texto
" ----------------------------------------------------------------------------
   map ,pr /\<\(\w*\) \1\><cr>
" ----------------------------------------------------------------------------
" Numerar linhas dentro do arquivo
" :let i=1 | g/^/s//\=i."\t"/ | let i=i+1
" ----------------------------------------------------------------------------
   map ,n :let i=1  g/^/s//\=i."\t"/  let i=i+1   
" ----------------------------------------------------------------------------
" Destaca uma linha no texto com o código de erro
" ---------------------------------------------------------------------------- 
   nnoremap <Leader>k mk:exe 'match Search /<Bslash>%'.line(".").'l/'<CR>
" ----------------------------------------------------------------------------
" Justifica: justifica os textos com o justificador em sed
" ----------------------------------------------------------------------------
   vmap ,je :!sed.alinha-justify<cr>
" ----------------------------------------------------------------------------
" Digitar ";l" retira espaços em branco de final de arquivo
" ----------------------------------------------------------------------------
"   map ;l   :%s/\s*$//g<cr>
" ----------------------------------------------------------------------------
" Mail: Configurações especiais para arquivos de e-mail
" ----------------------------------------------------------------------------
   au FileType Mail set fo=ctq tw=65 et
" ----------------------------------------------------------------------------
" Identação de textos e códigos com o TAB no modo visual
" URL: http://gustavodutra.com/post/72/
"               \ dicas-de-movimentacao-e-identacao-no-gvim/
" ----------------------------------------------------------------------------
   vnoremap < <gv
   vnoremap > >gv
   vmap  <TAB> >
   vmap  <S-TAB> <
   imap  <S-TAB> <ESC><<i
" ----------------------------------------------------------------------------
" Permite abrir um arquivo mencionado com o caminho dentro de outro arquivo
" Funciona em cabeçalhos de programação
" ----------------------------------------------------------------------------
   nmap gf :new %:p:h/<cfile><CR>
" ----------------------------------------------------------------------------
" }}}

" Funções, mapeamentos e abreviações para aquivos .txt {{{
" ----------------------------------------------------------------------------
" Quebra os arquivos de texto na coluna 120
" ----------------------------------------------------------------------------
"   au BufNewFile,BufRead *.txt setl tw=120
" ----------------------------------------------------------------------------
" Usa uma source para edição de arquivo .txt
" Source txt.vim do Aurelio Marinho Jarga
" URL: http://aurelio.net/vim/txt.vim
" ----------------------------------------------------------------------------
">>>>>   au BufNewFile,BufRead *.txt source ~/.vim/data/txt.vim
" ----------------------------------------------------------------------------
" Os arquivo README, NEWS e ToDo também são arquivos de texto 
" ----------------------------------------------------------------------------
   au BufNewFile,BufRead *{R,r}{E,e}{A,a}{D,d}{M,m}{E,e} setl ft=txt tw=79
   au BufNewFile,BufRead *{R,r}{E,e}{A,a}{D,d}{M,m}{E,e}
                                             \ source ~/.vim/data/txt.vim
   au BufNewFile,BufRead *{N,n}{E,e}{W,w}{S,s} setl ft=txt tw=79
   au BufNewFile,BufRead *{N,n}{E,e}{W,w}{S,s} source ~/.vim/data/txt.vim
   au BufNewFile,BufRead *{T,t}{O,o}{D,d}{O,o} setl ft=txt tw=79
   au BufNewFile,BufRead *{T,t}{O,o}{D,d}{O,o} source ~/.vim/data/txt.vim
" }}}

" Funções, mapeamentos e abreviações para programação e edição de dotfiles {{{
" ----------------------------------------------------------------------------
" Função que mapeia <F9> para mostrar/ocultar comentários
" ----------------------------------------------------------------------------
   fu! CommOnOff()
    if !exists('g:hiddcomm')
     let g:hiddcomm=1 | hi Comment ctermfg=black guifg=black
    else
     unlet g:hiddcomm | hi Comment ctermfg=cyan  guifg=cyan term=bold
    endif
   endfu
   map <F9> :call CommOnOff()<cr>
" ----------------------------------------------------------------------------
" Função para comentar vários arquivos de acordo com o tipo
" URL: http://vim.wikia.com/wiki/Comment_Lines_according_to_a_given_filetype
" ----------------------------------------------------------------------------
   fu! CommentLines()
     "let Comment="#" " shell, tcl, php, perl
      exe ":s@^@".g:Comment."@g"
      exe ":s@$@".g:EndComment."@g"
   endfu
" mapeando a função no modo visual com a combinação 'co'
   vmap co :call CommentLines()<CR>a
" definindo os comentários por tipo de arquivo (a primeira linha é um padrão)
   au BufRead,BufNewFile * let Comment="# " | let EndComment=""
   au BufRead,BufNewFile *.inc,*.ihtml,*.html,*.tpl,*.class 
     \ let Comment="<!-- " | let EndComment=" -->"
   au BufRead,BufNewFile *.sh,*.pl,*.tcl let Comment="# " | let EndComment=""
   au BufRead,BufNewFile *.js set | let Comment="// " | let EndComment=""
   au BufRead,BufNewFile *.cc,*.php,*.cxx,*.cpp 
     \ let Comment="// " | let EndComment=""
   au BufRead,BufNewFile *.c,*.h let Comment="/* " | let EndComment=" */"
   au BufRead,BufNewFile *.f90,*.f95 let Comment="! " | let EndComment=""
   au BufRead,BufNewFile *.f let Comment="C " | let EndComment=""
   au BufRead,BufNewFile *.tex,*.bib let Comment="% " | let EndComment=""
   au BufRead,BufNewFile *.vim,.vimrc let Comment="\" " | let EndComment="" 
" ----------------------------------------------------------------------------
" }}}

" Referências {{{
" ----------------------------------------------------------------------------
"
"    * vimbook      - tirei muitas dicas dali, mais do que isso, aprendi coisas
"                     para adaptar e escrever outras. Aliás, essa foi a força
"                     motriz para a iniciativa dessa configuração.
"      URL: http://vivaotux.blogspot.com/2009/01/nosso-livro-sobre-o-vim.html
"
"    * aurelio.net  - referência clássica, mesmo que eu não tivesse visitado a
"                     página do camarada (e eu visitei), eu teria absorvido
"                     através de terceiros.
"      URL: http://aurelio.net/
"
"    * vivaotux     - muitas dicas sobre vim (plugins e outras coisas).
"      URL: http://vivaotux.blogspot.com/
"
"    * Vim (Página oficial) - a documentação existente nesse site é fantástica.
"      URL: http://www.vim.org/
"
"    * Alguns arquivos vimrc:
"
"      * http://aurelio.net/vim/vimrc-ivan.txt
"      * http://aurelio.net/doc/vim/vimrc-voyeg3r.txt
"      * http://dotfiles.org/~voyeg3r/.vimrc
"      * http://aurelio.net/doc/dotfiles/vimrc.txt
"      * http://www.stripey.com/vim/vimrc.html
"      * http://www.8t8.us/configs/vimrc.txt
"      * http://snipt.net/voyeg3r/my-vimrc
" ----------------------------------------------------------------------------
" }}}


