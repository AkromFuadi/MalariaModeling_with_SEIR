function dy=Malaria(x,y)
    %% S=y(1); E=y(2); I=y(3); R=y(4)
    dy=zeros(16,1);
    %% Parameter Value
        miu1     = 0.004;
        beta1    = 0.014;
        delta1   = 0.027;
        epsilon1 = 0.011;
        rho1     = 0;
        miu2     = 0.004;
        beta2    = 0.083;
        delta2   = 0.027;
        epsilon2 = 0.011;
        rho2     = 0;
        miu3     = 0.004;
        beta3    = 0.083;
        delta3   = 0.027;
        epsilon3 = 0.011;
        rho3     = 0.21;
        miu4     = 0.004;
        beta4    = 0.083;
        delta4   = 0.027;
        epsilon4 = 0.011;
        rho4     = 0.8;
    %% Simulasi Pertama
        dy(1)=(1-rho1)*miu1-beta1*y(1)*y(3)-miu1*y(1);
        dy(2)=beta1*y(1)*y(3)-delta1*y(2)-miu1*y(2);
        dy(3)=delta1*y(2)-epsilon1*y(3)-miu1*y(3);
        dy(4)=epsilon1*y(3)+rho1*miu1-miu1*y(4);
    %% Simulasi Kedua
        dy(5)=(1-rho2)*miu2-beta2*y(5)*y(7)-miu2*y(5);
        dy(6)=beta2*y(5)*y(7)-delta2*y(6)-miu2*y(6);
        dy(7)=delta2*y(6)-epsilon2*y(7)-miu2*y(7);
        dy(8)=epsilon2*y(7)+rho2*miu2-miu2*y(8);
    %% Simulasi Ketiga
        dy(9)=(1-rho3)*miu3-beta3*y(9)*y(11)-miu3*y(9);
        dy(10)=beta3*y(9)*y(11)-delta3*y(10)-miu3*y(10);
        dy(11)=delta3*y(10)-epsilon3*y(11)-miu3*y(11);
        dy(12)=epsilon3*y(11)+rho3*miu3-miu3*y(12);
    %% Simulasi Keempat
        dy(13)=(1-rho4)*miu4-beta4*y(13)*y(15)-miu4*y(13);
        dy(14)=beta4*y(13)*y(15)-delta4*y(14)-miu4*y(14);
        dy(15)=delta4*y(14)-epsilon4*y(15)-miu4*y(15);
        dy(16)=epsilon4*y(15)+rho4*miu4-miu4*y(16);
end