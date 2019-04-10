#pragma once 

#include "cpuminer-config.h"
#include "miner.h"

#include <string.h>
#include <inttypes.h>

void sha256tx(unsigned char *hash, const unsigned char *data, int len);
void sha256d(unsigned char *hash, const unsigned char *data, int len);

int scanhash_sha256dtx(int thr_id, uint32_t *pdata, const uint32_t *ptarget,
                            uint32_t max_nonce, uint64_t *hashes_done);

