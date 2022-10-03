# confFuzz
面向数据库配置的定向灰盒模糊测试
How to instrument a Binary
1.Install LLVM 11.0.0 with Gold-plugin. 
2.Install other prerequisite
sudo apt-get update
sudo apt-get install python3
sudo apt-get install python3-dev
sudo apt-get install python3-pip
sudo apt-get install libboost-all-dev  # boost is not required if you use genDistance.sh in step 7
sudo pip3 install --upgrade pip
sudo pip3 install networkx
sudo pip3 install pydot
sudo pip3 install pydotplus
3.Compile confFuzz fuzzer, LLVM-instrumentation pass and the distance calculator
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
4.Download subject (e.g., sqlite3)
