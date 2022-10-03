# confFuzz
## 面向数据库配置的定向灰盒模糊测试
# How to instrument a Binary
1) Install LLVM 11.0.0 with Gold-plugin. 
2) Install other prerequisite
```bash
sudo apt-get update
sudo apt-get install python3
sudo apt-get install python3-dev
sudo apt-get install python3-pip
sudo apt-get install libboost-all-dev  # boost is not required if you use genDistance.sh in step 7
sudo pip3 install --upgrade pip
sudo pip3 install networkx
sudo pip3 install pydot
sudo pip3 install pydotplus
```
3) Compile confFuzz fuzzer, LLVM-instrumentation pass and the distance calculator

```bash
# Checkout source code
git clone https://github.com/likaiam/confFuzz.git
export ConfFuzz=$PWD/conffuzz

# Compile source code
pushd $ConfFuzz
make clean all 
cd llvm_mode
make clean all
cd ..
cd distance_calculator/
cmake -G Ninja ./
cmake --build ./
popd
```
4) Download subject (e.g., sqlite3)
```bash
# Clone subject repository
git clone https://github.com/sqlite/sqlite.git
export SUBJECT=$PWD/bld/sqlite3
```
5) Generate CG and intra-procedural CFGs from subject (i.e., sqlite3).
```bash
# Set aflgo-instrumenter
export CC=$ConfFuzz/afl-clang-fast
export CXX=$ConFuzz/afl-clang-fast++

# Set aflgo-instrumentation flags
export COPY_CFLAGS=$CFLAGS
export COPY_CXXFLAGS=$CXXFLAGS
export ADDITIONAL="-targets=$TMP_DIR/BBtargets.txt -outdir=$TMP_DIR -flto -fuse-ld=gold -Wl,-plugin-opt=save-temps"
export CFLAGS="$CFLAGS $ADDITIONAL"
export CXXFLAGS="$CXXFLAGS $ADDITIONAL"

# Build sqlite3 (in order to generate CG and CFGs).
# Meanwhile go have a coffee ☕️
export LDFLAGS=-lpthread
pushd $SUBJECT/bld
  ../configure --disable-shared
  make clean
  make 
popd
```
# How to fuzz the instrumented binary
* We set the exponential annealing-based power schedule (-z exp).
* We set the time-to-exploitation to 45min (-c 45m), assuming the fuzzer is run for about an hour.
```bash
# Construct seed corpus
cd fuzz_root
mkdir input

$AFLGO/afl-fuzz -S ef709ce2 -z exp -c 45m -i in -o out $SUBJECT/sqlite3 --bail
```

