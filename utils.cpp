//
// Created by 王昊 on 2018/5/21.
//

#include "utils.h"

void eth::Utils::fillStream(RLPStream& _s, bool _sig){
    _s.appendList(_sig ? 8 : 5);
    _s << nonce << receiveAddress << value << fee << data;
    if (_sig)
        _s << vrs.v << vrs.r << vrs.s;
}