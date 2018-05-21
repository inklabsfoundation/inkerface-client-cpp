#include <iostream>
#include "utils.h"
using namespace eth;
int main() {
    int v = 0;
    Utils utils = Utils();
    secp256k1_start();
    Secret _priv;
    h256 msg = utils.sha3(false);
    h256 sig[2];
    h256 nonce = utils.kFromMessage(msg, _priv);
    if (!secp256k1_ecdsa_sign_compact(msg.data(), 32, sig[0].data(), _priv.data(), nonce.data(), &v))
        throw InvalidSignature();
#if ETH_ADDRESS_DEBUG
    cout << "---- SIGN -------------------------------" << endl;
        cout << "MSG: " << msg << endl;
        cout << "SEC: " << _priv << endl;
        cout << "NON: " << nonce << endl;
        cout << "R S V: " << sig[0] << " " << sig[1] << " " << v << "+27" << endl;
#endif

    //  vrs.v = (byte)(v + 27);
    //  vrs.r = (u256)sig[0];
    //  vrs.s = (u256)sig[1];
    return 0;
}