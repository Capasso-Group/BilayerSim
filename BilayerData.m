%% Code with the data - Alfonso Palmieri
clear all
close all
clc

%% Load the data
load('ElectricField.mat'); %load the transmission data obtained from the simulation of the bilayer
load('ElectricFieldPhase.mat'); %load the phase obtained from the simulation of the bilayer
load('ElectricFieldAnalyitical.mat'); %load the transmission data of the bilayer from the product of the data of the single layer data
load('ElectricFieldPhaseAnalyitical.mat'); %load the phase of the bilayer from the product of the data of the single layer data


Spacing = linspace(50,250,11); %Vector containng dimensions considered

figure(1)
imagesc(Spacing, Spacing, abs(Etot), 'Interpolation', 'bilinear');
xticks(Spacing);
yticks(Spacing);
colormap(magma)
colorbar
axis([min(Spacing),max(Spacing),min(Spacing),max(Spacing)])
set(gca,'YDir','normal')
xlabel('Dx (nm)')
ylabel('Dy (nm)')
title('Power Tranmsission - FDTD simulation of the bilayer')
set(gca,'FontName','Times New Roman','FontSize',15)
clim([0,1])
set(gca,'tickdir','out')

figure(2)
imagesc(Spacing, Spacing, FASE, 'Interpolation', 'bilinear');
colormap(twilight)
colorbar
axis([min(Spacing),max(Spacing),min(Spacing),max(Spacing)])
set(gca,'YDir','normal')
xlabel('Dx (nm)')
ylabel('Dy (nm)')
title('Phase Shift-FDTD simulation of the bilayer')
set(gca,'FontName','Times New Roman','FontSize',15)
clim([0,2*pi])
set(gca,'tickdir','out')


figure(3)
imagesc(Spacing, Spacing, abs(Edouble), 'Interpolation', 'bilinear');
xticks(Spacing);
yticks(Spacing);
colormap(magma)
colorbar
axis([min(Spacing),max(Spacing),min(Spacing),max(Spacing)])
set(gca,'YDir','normal')
xlabel('Dx (nm)')
ylabel('Dy (nm)')
title('Power Tranmsission - Product of Jones Matrices of the single layer')
set(gca,'FontName','Times New Roman','FontSize',15)
clim([0,1])
set(gca,'tickdir','out')

figure(4)
imagesc(Spacing, Spacing, PhaseAnalytical, 'Interpolation', 'bilinear');
colormap(twilight)
colorbar
axis([min(Spacing),max(Spacing),min(Spacing),max(Spacing)])
set(gca,'YDir','normal')
xlabel('Dx (nm)')
ylabel('Dy (nm)')
title('Phase Shift- Product of Jones Matrices of the single layer')
set(gca,'FontName','Times New Roman','FontSize',15)
clim([0,2*pi])
set(gca,'tickdir','out')

