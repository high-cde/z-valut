# ==========================================
# ZDOS // Z-VALUT BUILD SYSTEM (ZLang / ZLB2)
# ==========================================

ZLC = zlang-compiler
RUNTIME = zlb2

all: clean build test

build:
	@echo "[*] Compilazione dei moduli nativi Z-Valut..."
	$(ZLC) build --manifest zvalut.toml --target sovereign

test:
	@echo "[*] Esecuzione dei test di integrità del Ledger..."
	$(RUNTIME) execute --entry src/main.zl

clean:
	@echo "[*] Pulizia degli artefatti di build..."
	rm -rf build/ *.zbin
