#ð�������㷨
.text
main:
lw t0,0(x0) # R[t0]<-Mem[0],t0 ������������ n,����������ָ��� n ���� 0x00 ��
addi a1,x0,1 # a1�����泣�� 1
add a2,t0,x0 # a2������ i����ʼֵΪ i=n
L1:
addi a3,x0,1 # a3������ j����ʼֵΪ j=1
L2:
 slli a4,a3,2 # a4 ���� a[j]��ַ
lw a6,0(a4) # ��ȡ�� j ��Ԫ��
lw a7,4(a4) # ��ȡ�� j+1 ��Ԫ��
bge a7,a6,L4 # a[j]>=a[j+1] ��ת,���մ��������Ƚ�
sw a7,0(a4) # �����洢
sw a6,4(a4) # �����洢
L4:
addi a3,a3,1 # j=j+1
bltu a3,a2,L2 # if j<i then ѭ������Ű����޷������Ƚ�
L3:
 sub a2,a2,a1 # i--
 bne a2,a1,L1 # if i>1 then ѭ�� else �����
 ecall # ����ִ��