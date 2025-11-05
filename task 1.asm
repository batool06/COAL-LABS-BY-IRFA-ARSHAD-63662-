.model
.stack 100h
.data 

 value dw 4,0,7,1,5,0,9,0,8  
 
 .code 
 
 main proc 
    
       mov ax,@data
       mov ds, ax 
       
       mov si, offset  value
       mov cx,9
        
       pushe:
        mov ax,[si]
        cmp ax,0 
        JE skip
        push ax 
                  
       skip:
       add si,2         ; move to next element
         
       loop pushe        ;loop call hui 
       mov cx, 6         ;loop jitni bar chalani ha
          
  display:
    pop ax
    mov dl, al 
    add dl, 30h       ; ascii
    
    mov ah,02h        
    int 21h
    loop display 
    
    
     mov ah,4Ch
    int 21h

main endp
end main