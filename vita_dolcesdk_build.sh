rm -rf psvitabuild
mkdir psvitabuild
cd psvitabuild

cmake -DCMAKE_TOOLCHAIN_FILE=$DOLCESDK/share/dolce.toolchain.cmake -DBOX2D_BUILD_UNIT_TESTS=OFF -DBOX2D_BUILD_TESTBED=OFF -DBOX2D_BUILD_DOCS=OFF ../ 
#FOR VITASDK USE THIS LINE INSTEAD : 
#cmake -DCMAKE_TOOLCHAIN_FILE=$VITASDK/share/vita.toolchain.cmake -DBOX2D_BUILD_UNIT_TESTS=OFF -DBOX2D_BUILD_TESTBED=OFF -DBOX2D_BUILD_DOCS=OFF ../ 

make
make install

cd ..
