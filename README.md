# Controle Financeiro — A Marca da Corujinha

Protótipo do app interno de **conciliação TikTok Shop × Bling**: cruza as vendas
do Bling com os demonstrativos/pagamentos do TikTok e mostra faturado (NF),
custo, impostos, lucro e margem por pedido.

> Nesta fase é um **protótipo estático** (`index.html`), sem login e sem backend.
> O botão "Processar" é simulado e a tabela usa uma amostra de 36 pedidos reais.
> As próximas fases (Next.js + Supabase + integração Bling/TikTok) estão no plano.

## Publicar no Vercel (site estático)

1. Acesse https://vercel.com e faça login com o GitHub.
2. **Add New → Project** e selecione o repositório `controle_financeiro`.
3. Em *Framework Preset* deixe **Other** (não há build; é HTML puro).
   - Root Directory: `/` · Build Command: vazio · Output Directory: vazio.
4. Clique **Deploy**. Em ~1 min o app fica no ar em um endereço `*.vercel.app`.

A cada `git push` na branch `main`, o Vercel republica sozinho.
