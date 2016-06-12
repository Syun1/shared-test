#! /bin/bash

########################################################
#最大公約数を求めるプログラム16745107のテストコード    #
#実行結果と予想解を比較し、0又は1の終了ステータスを返す#
########################################################

tmp=/tmp/$$

ERROR_EXIT () {
echo "$1" >&2
rm -f $tmp-*
exit 1
}

echo " 6 " > $tmp-ans         #予想解
./16745107 18 12 > $tmp-out1  #実行結果その1
./16745107 12 18 > $tmp-out2  #実行結果その2
./16745107 20 10 > $tmp-out3  #実行結果その3

diff $tmp-ans $tmp-out1 || ERROR_EXIT "TEST1"
diff $tmp-ans $tmp-out2 || ERROR_EXIT "TEST2"
diff $tmp-ans $tmp-out3 || ERROR_EXIT "TEST3"

echo OK
rm -f $tmp-*
exit 0

