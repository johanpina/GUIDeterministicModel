function dy=sigmaModel(t,y)
    global k sig32gene sig32mrna;
    global sig32 ftshgene ftsh;
    global jcomp_gene jcomp jcomp_sig32 e_sig32;

    k1=k(1);k2=k(2);k3=k(3);k4=k(4);k5=k(5);k6=k(6);k7=k(7);k8=k(8);
    k9=k(9);k10=k(10);k11=k(11);k12=k(12);
    
    sig32gene=1;
    sig32mrna=y(1);
    sig32=y(2);
    ftshgene=1;
    ftsh=y(3);
    jcomp_gene=1;
    jcomp=y(4);
    jcomp_sig32=y(5);
    e_sig32=y(6);
    
    %d/dt sig32mrna
    dy(1)=k1*sig32gene - k2*sig32mrna - k3*sig32mrna;
    %d/dt sig32
    dy(2)=k3*sig32mrna + k5*e_sig32 + k8*e_sig32*jcomp_gene -k4*sig32 ...
        +k11*jcomp_sig32 -k10*sig32*jcomp + k6*ftshgene*e_sig32 ...
        - k12*jcomp_sig32*ftsh;
    %d/dt E_sig32
    dy(3)=k4*sig32 - k5*e_sig32 - k6*e_sig32*ftshgene - ...
        k8*e_sig32*jcomp_gene;
    %d/dt jcomp
    dy(4)=k6*e_sig32*ftshgene - k7*ftsh -k12*ftsh*jcomp_sig32;
    %d/dt ftsh
    dy(5)=k11*jcomp_sig32 + k8*e_sig32*jcomp_gene + k12*ftsh*jcomp_sig32...
        - k10*jcomp*sig32 - k9*jcomp;
    %d/dy jcomp_sig32
    dy(6)=k10*sig32*jcomp - k11*jcomp_sig32 - k12*jcomp_sig32*ftsh;
    
    dy = dy';
end

%y1 = genS32
%y2 = S32mRNA
%y3 = Esigma32
%y4 = Jcompgen
%y5 = S32
%y6 = Jcomp-s32
%y7 = Jcomp
%y8 = ftshgen
%y9 = ftsh