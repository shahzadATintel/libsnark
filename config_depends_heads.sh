
# Arg1 :  dirname
# Arg2 :  checkout tag
# Arg3 : branch name to be given

function checkout() {
    pushd .
    cd $1
    git checkout $2
    (git show-branch $3 &>/dev/null) && (git checkout $3) || (git checkout -b $3)
    popd
}

# config for ate-pairing repo
ate_pairing_info=("ate-pairing" "e698901" "ate-pairing-snark")
gtest_info=("gtest" "3a4cf1a" "gtest-snark")
libff_info=("libff" "176f3f4" "libff-snark")
libfqfft_info=("libfqfft" "7e1e957" "libfqfft-snark")
libsnark_supercop_info=("libsnark-supercop" "b04a0ea" "libsnark-supercop-snark")
xbyak_info=("xbyak" "f0a8f7f" "xbyak-snark")

checkout ${ate_pairing_info[0]} ${ate_pairing_info[1]} ${ate_pairing_info[2]}
checkout ${gtest_info[0]} ${gtest_info[1]} ${gtest_info[2]}
checkout ${libff_info[0]} ${libff_info[1]} ${libff_info[2]}
checkout ${libfqfft_info[0]} ${libfqfft_info[1]} ${libfqfft_info[2]}
checkout ${libsnark_supercop_info[0]} ${libsnark_supercop_info[1]} ${libsnark_supercop_info[2]}
checkout ${xbyak_info[0]} ${xbyak_info[1]} ${xbyak_info[2]}


