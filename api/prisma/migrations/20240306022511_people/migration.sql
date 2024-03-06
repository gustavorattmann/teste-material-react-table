-- CreateEnum
CREATE TYPE "Grau" AS ENUM ('FUNDAMENTAL', 'MEDIO', 'TECNICO', 'GRADUACAO', 'POS', 'MESTRADO', 'DOUTORADO', 'PHD');

-- CreateTable
CREATE TABLE "People" (
    "id" SERIAL NOT NULL,
    "cpf" VARCHAR(11) NOT NULL,
    "rg" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "dataNascimento" DATE NOT NULL,
    "cargo" TEXT NOT NULL,
    "grau" "Grau" NOT NULL,
    "email" TEXT NOT NULL,
    "ddi" VARCHAR(3) NOT NULL,
    "ddd" VARCHAR(2) NOT NULL,
    "telefone" VARCHAR(9) NOT NULL,
    "cep" VARCHAR(8) NOT NULL,
    "logradouro" TEXT NOT NULL,
    "endereco" TEXT NOT NULL,
    "numeroEndereco" TEXT NOT NULL,
    "bairro" TEXT NOT NULL,
    "municipio" TEXT NOT NULL,
    "uf" TEXT NOT NULL,

    CONSTRAINT "People_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "People_email_key" ON "People"("email");
