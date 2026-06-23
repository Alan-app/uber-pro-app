-- vBeta1.23 - adiciona coluna de vencimento da assinatura paga (30 dias a
-- partir da liberação), separada do trial_end (que controla o período de
-- teste gratuito). Necessário para destacar no admin quem está perto de
-- vencer e avisar o motorista dentro do app.
--
-- Como aplicar: copie e execute este script no SQL Editor do Supabase
-- (painel do projeto > SQL Editor > New query > colar e rodar).

alter table public.user_access
  add column if not exists access_until timestamptz;

comment on column public.user_access.access_until is
  'Data/hora em que a assinatura paga (status active) vence. Preenchida automaticamente como hoje + 30 dias sempre que o admin libera o usuário (botão Liberar).';
