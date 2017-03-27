# iOS - Documento de Arquitetura

[![Platform](https://img.shields.io/cocoapods/p/MRTableViewManager.svg?style=flat)](http://cocoapods.org/pods/MRTableViewManager)

O objetivo deste documento é descrever a arquitetura de referência para o desenvolvimento de aplicativos (apps) iOS.
Este documento descreve a minha visão geral da arquitetura definida, além de melhores práticas, padrões, mecanismos e frameworks que uso atualmente para construção de apps na plataforma iOS.

O desenho da arquitetura contempla uma variedade de padrões de mercado, voltados para atender requisitos de segurança, 
compatibilidade, manutenibilidade, escalabilidade e testabilidade.

# Exemplo prático
Neste repositório, além de conter o PDF com o detalhamento da arquitetura proposta, 
também contempla um exemplo mostrando como o código deve ser arquiteturado na prática.

# Arquitetura - Visão geral

Dentre as principais características deste modelo está a separação de responsabilidades, 
através de diferentes componentes ou camadas, visando o maior reaproveitamento do código. 
O PDF a seguir descreve de forma resumida o modelo de arquitetura e a responsabilidade de cada camada:

![ios-arch](iOS-Architecture.pdf)
