//
// Created by 王昊 on 2018/5/21.
//

#ifndef INKERFACE_CLIENT_CPP_UTILS_H
#define INKERFACE_CLIENT_CPP_UTILS_H

#include <Transaction.h>
#include "./secp256k1/secp256k1.h"
#include "ethereum/Common.h"
#include "ethereum/RLP.h"
#include "ethereum/Exceptions.h"
namespace  eth {
    class Utils {
        u256 nonce;
        Address receiveAddress;
        u256 value;
        u256 fee;
        u256s data;
        Signature vrs;
        void fillStream(RLPStream& _s, bool _sig = true);
    public:
        h256 sha3(bool _sig = true) {
            RLPStream s;
            fillStream(s, _sig);
            return eth::sha3(s.out());
        }
        h256 kFromMessage(h256 _msg, h256 _priv)
        {
            return _msg ^ _priv;
        }
    };
    using h256 = FixedHash<32>;
    using h160 = FixedHash<20>;
}
#endif //INKERFACE_CLIENT_CPP_UTILS_H
