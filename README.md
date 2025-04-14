# 🐳 Cluster Docker Swarm com Vagrant

Projeto para criação de um cluster local com Docker Swarm utilizando Vagrant e VirtualBox.

## 🔧 Tecnologias

- Vagrant
- VirtualBox
- Docker

## 🚀 Subindo o ambiente

```bash
vagrant up
```

Isso criará 3 VMs:
- manager (192.168.56.10)
- worker1 (192.168.56.11)
- worker2 (192.168.56.12)

## ✅ Verificando o cluster

Após o ambiente subir, acesse o manager:
```bash
vagrant ssh manager
docker node ls
```

Você verá os três nós listados no cluster Swarm.

---

Feito com 💻 para praticar orquestração de containers e automação de ambientes.
