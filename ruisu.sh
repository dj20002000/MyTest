#!/bin/sh
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
���Yruisu.sh �Umo�V��_q�dr2d߼��FMZ5��Mc�DXq����/�C
�R��І"&
[AZ�	Q��uk����n�a�v*S�,�b���9�9�9>}
4d��)%v.Wdp�Z
V*U�T-X�%��Ht0e���PS@���?�]p�ml�jj��"׮�p��B5ӁXz�Op��M���`��<>Oǐ���\����_�r��oyO:�/�^����`J�e�(щl��ކ��5���տ8M�Kp
��ބ�py�219��-@������6��'�cْ{#��Wr�t��S�v��aqdIs8Uc�x������5��\�zw�~\X0��t�͋<LI"��2�Y��>�����}�p�P[��\�#��r��I�A6>�42)H�$KN<79`�@\�;B6i�MH@� 6)o㼍\���{��MNa�hH2��{�tؿ;8�����M�Uކ�n�{�Q������p�o1��zk��-�VB���k���DQ)6���aw��8�,ƵZM\TJ7�j�b�*��4��6|a9��aU�W,�̀y2����6�o1�[�l��/!4���=�.T��>K�p�@�S
O����κ��no���2�w�p����c�2��<�m:�0a�-��:-�ζ��������]��ݿT�'��n��'�u*cԾ7�?N�Es���~u7C֠�aϠ�� �H� 1���Z���[K2�J�I��EP5j�dJ��(���0��3�KtI4-�*e�Q��n
��{҂4#�jQ�pfP�h,��%Z-?�b�j4eb�\9�����@��bέ��aӽ��/;����ǝ�0���_�*Wu''����X�.�����dS
哙̥��\Fb��=ܹ�*꾼}� ������3l,�`g�@s����,G�����X܌�J�I!�~_L�i&nv��~�i�&�0> \	�y~,�A�*3��T�Gy0�"QQK�WL��$ �y�[�7���*�j�uN�^  