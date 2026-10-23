# ZDOS // Z-VALUT SPECIFICA TECNICA NATIVA (ZLang / ZLB2)

## 1. Architettura Generale
`z-valut` è il sistema di vault e gestione transazionale sovrano sviluppato interamente in **ZLang** per l'ecosistema **ZDOS**. Il sistema opera senza dipendenze da framework commerciali esterni, interfacciandosi direttamente con il runtime bare-metal `ZLB2`.

## 2. Moduli del Sistema
- **`src/valut_core.zl`**: Gestisce l'inizializzazione dell'account master, i saldi nativi in **ZVT** e Netkali ($DSN), e la validazione crittografica della chiave seed.
- **`src/transaction.zl`**: Definisce la struttura della transazione e implementa la firma crittografica nativa tramite sha256/curve sovrane.
- **`src/ledger.zl`**: Gestisce il commit dei blocchi sequenziali, la generazione degli hash di blocco e la verifica di integrità della catena locale.
- **`src/network.zl`**: Gestisce la connessione con i peer sovrani sulla porta di rete ZDOS e la propagazione broadcast delle transazioni firmate.

## 3. Flusso di Esecuzione (Main)
L'entry-point (`src/main.zl`) orchestra l'intero ciclo di vita:
1. Inizializzazione del Vault.
2. Firma della transazione di test.
3. Inclusione nel blocco del Ledger.
4. Propagazione tramite il modulo di rete.

---
*Progettato per l'ecosistema sovrano ZDOS.*
