org 100h


mov ax,0600h 
mov bh,07 
mov cx,0000 ;de la linia 00 coloana 00
mov dx,184fh ;pana la linia 18h coloana 4fh
int 10h 
mov ah,00 
mov al,13h 
int 10h 
   
   
;CASA
 ; linie sus casa
mov cx,130 ; incepe linia de sus de la coloana 130 si
mov dx,75 ; linia 75
casas: mov ah,0ch 
mov al,05h ;culoarea liniei
int 10h 
inc cx ; incrementare coloana pentru desenarea liniei pe orizontala
cmp cx,216 ; linia se opreste cand se ajunge la coloana 216
jnz casas

; linie jos casa
mov cx,130
mov dx,125
casaj: mov ah,0ch
mov al,06h
int 10h
inc cx
cmp cx,216
jnz casaj 

; linie stanga casa
mov cx,130     ; incepe linia din stanga de la coloana 130 si  
mov dx,75      ; linia 75                                   
casast: mov ah,0ch
mov al,07h
int 10h
inc dx   ; incrementare linie pentru desenarea liniei pe verticala
cmp dx,125 ;linia se opreste cand se ajunge la linia 125 
jnz casast 
 
; linie drapta casa
mov cx,216
mov dx,75
casadr: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,126
jnz casadr
             
             
;ACOPERIS
; partea stanga a acoperisiului
mov cx,130
mov dx,75
acopst: mov ah,0ch
mov al,09h
int 10h
inc cx    ;incrementare coloana si decrementare line pentru a desena o linie pe diagonala
dec dx
cmp cx,173
cmp dx,32
jnz acopst

; partea dreapta a acoperisiului
mov cx,173
mov dx,32
acopdr: mov ah,0ch
mov al,09h
int 10h
inc cx
inc dx
cmp cx,216
cmp dx,75
jnz acopdr 


;COS
; linie stanga cos
mov cx,193
mov dx,52
coss: mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,40
jnz coss 

; linie dreapta cos
mov cx,199
mov dx,58
cosd: mov ah,0ch
mov al,07h
int 10h
dec dx
cmp dx,40
jnz cosd
 

;GARAJ
; linie sus garaj
mov cx,216 
mov dx,100 
garsus: mov ah,0ch 
mov al,07h 
int 10h 
inc cx 
cmp cx,250 
jnz garsus   

; garaj drapta
mov cx,250
mov dx,100
garajdr: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,126
jnz garajdr  

; garaj jos
mov cx,216
mov dx,125
garajj: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,250
jnz garajj 

; linie sus1 garaj
mov cx,220 
mov dx,105 
garsus1: mov ah,0ch
mov al,07h 
int 10h 
inc cx 
cmp cx,246 
jnz garsus1   

; linie sus2 garaj
mov cx,220 
mov dx,112 
garsus2: mov ah,0ch 
mov al,07h 
int 10h 
inc cx 
cmp cx,246 
jnz garsus2

; linie sus3 garaj
mov cx,220 
mov dx,119 
garsus3: mov ah,0ch 
mov al,07h 
int 10h
inc cx
cmp cx,246 
jnz garsus3   

; linie stanga garaj
mov cx,220
mov dx,105
garajs: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,119
jnz garajs

; linie dreapta2 garaj
mov cx,246
mov dx,105
garajd2: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,119
jnz garajd2 

 
; USA 
; stanga
mov cx,164
mov dx,125
usas: mov ah,0ch
mov al,09h
int 10h
dec dx
cmp dx,100
jnz usas 

; dreapta
mov cx,182
mov dx,125
usad: mov ah,0ch
mov al,09h
int 10h
dec dx
cmp dx,100
jnz usad

; sus
mov cx,164
mov dx,100
usasus: mov ah,0ch
mov al,09h
int 10h
inc cx
cmp cx,183
jnz usasus 
       
; clanta
mov cx,179
mov dx,120
cla: mov ah,0ch
mov al,09h
int 10h
dec dx
cmp dx,118
jnz cla  


; 2 FERESTRE
; geam stanga prima linie verticala
mov cx,136
mov dx,85
sta1: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz sta1  

; geam stanga a doua linie verticala
mov cx,146
mov dx,85
sta2: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz sta2 

; geam stanga a treia linie verticala
mov cx,156
mov dx,85
sta3: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz sta3

; geam stanga prima linie orizontala
mov cx,136
mov dx,85
sta11: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,156
jnz sta11 

; geam stanga a  doua linie orizontala
mov cx,136
mov dx,95
sta22: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,156
jnz sta22  

; geam stanga a treia linie orizontala
mov cx,136
mov dx,105
sta33: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,157
jnz sta33


; geam dreapta prima linie verticala
mov cx,190
mov dx,85
dre1: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz dre1  

; geam dreapta a doua linie verticala
mov cx,200
mov dx,85
dre2: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105   
jnz dre2  

; geam deapta a treia linie verticala
mov cx,210
mov dx,85
dre3: mov ah,0ch
mov al,07h
int 10h
inc dx
cmp dx,105
jnz dre3  
     
; geam dreapta prima linie orizontala
mov cx,190 
mov dx,85
dre11: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,210
jnz dre11
     
; geam dreapta a doua linie orizontala     
mov cx,190
mov dx,95
dre22: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,210
jnz dre22  

; geam dreapta a treia linie orizontala 
mov cx,190
mov dx,105
dre33: mov ah,0ch
mov al,07h
int 10h
inc cx
cmp cx,211
jnz dre33  
               
 mov ah, 02    ; incarcare bip
    mov dl, 07h
    int 21h       ;redare bip 
ret 