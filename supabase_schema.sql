-- Controle Financeiro Corujinha — estrutura do banco (rodar no SQL Editor do Supabase)

-- Base acumulada de pedidos (chave = Nº do Pedido Bling). Importações fazem upsert aqui.
create table if not exists public.pedidos (
  pedido          text primary key,
  dados           jsonb not null,
  data_venda      text,
  data_pagamento  text,
  atualizado_em   timestamptz not null default now()
);

-- Log de cada importação (quantos novos / atualizados).
create table if not exists public.importacoes (
  id            uuid primary key default gen_random_uuid(),
  criado_em     timestamptz not null default now(),
  novos         int,
  atualizados   int,
  total_arquivo int,
  periodo       text
);

-- Segurança: só usuários autenticados leem/gravam.
alter table public.pedidos     enable row level security;
alter table public.importacoes enable row level security;

create policy "pedidos auth"     on public.pedidos     for all to authenticated using (true) with check (true);
create policy "importacoes auth" on public.importacoes for all to authenticated using (true) with check (true);
