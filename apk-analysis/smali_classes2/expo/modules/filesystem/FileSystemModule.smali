.class public Lexpo/modules/filesystem/FileSystemModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "FileSystemModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;,
        Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;,
        Lexpo/modules/filesystem/FileSystemModule$ProgressListener;,
        Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;,
        Lexpo/modules/filesystem/FileSystemModule$TaskHandler;,
        Lexpo/modules/filesystem/FileSystemModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 10 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 11 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 12 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 13 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 14 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 15 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1128:1\n61#2:1129\n14#3:1130\n25#3:1131\n27#4,3:1132\n31#4:2293\n110#5,2:1135\n166#5,3:2288\n124#5,2:2291\n259#6:1137\n262#6,3:1195\n259#6:1198\n262#6,3:1257\n284#6:1260\n287#6,3:1330\n259#6:1333\n262#6,3:1392\n243#6,8:1395\n251#6,2:1450\n243#6,8:1452\n251#6,2:1507\n259#6:1509\n262#6,3:1568\n243#6,8:1571\n251#6,2:1626\n233#6:1628\n234#6,2:1659\n233#6:1661\n234#6,2:1692\n243#6,8:1694\n251#6,2:1749\n243#6,8:1751\n251#6,2:1806\n259#6:1808\n262#6,3:1867\n284#6:1870\n287#6,3:1940\n272#6:1943\n275#6,3:1962\n322#6:1965\n325#6,3:2006\n347#6:2009\n350#6,3:2061\n322#6:2064\n325#6,3:2105\n243#6,8:2108\n251#6,2:2163\n372#6:2165\n375#6,3:2228\n243#6,8:2231\n251#6,2:2286\n182#7,7:1138\n168#7:1145\n158#7,8:1148\n189#7:1156\n168#7:1157\n158#7,8:1158\n182#7,7:1199\n168#7:1206\n158#7,8:1209\n189#7:1217\n168#7:1218\n158#7,8:1219\n187#7:1227\n194#7,8:1261\n168#7:1269\n158#7,8:1272\n202#7:1280\n168#7:1281\n158#7,8:1282\n203#7:1290\n168#7:1291\n158#7,8:1292\n200#7:1300\n182#7,7:1334\n168#7:1341\n158#7,8:1344\n189#7:1352\n168#7:1353\n158#7,8:1354\n187#7:1362\n172#7,6:1403\n168#7:1409\n158#7,8:1412\n176#7:1420\n172#7,6:1460\n168#7:1466\n158#7,8:1469\n176#7:1477\n182#7,7:1510\n168#7:1517\n158#7,8:1520\n189#7:1528\n168#7:1529\n158#7,8:1530\n187#7:1538\n172#7,6:1579\n168#7:1585\n158#7,8:1588\n176#7:1596\n172#7,6:1702\n168#7:1708\n158#7,8:1711\n176#7:1719\n172#7,6:1759\n168#7:1765\n158#7,8:1768\n176#7:1776\n182#7,7:1809\n168#7:1816\n158#7,8:1819\n189#7:1827\n168#7:1828\n158#7,8:1829\n187#7:1837\n194#7,8:1871\n168#7:1879\n158#7,8:1882\n202#7:1890\n168#7:1891\n158#7,8:1892\n203#7:1900\n168#7:1901\n158#7,8:1902\n200#7:1910\n172#7,6:1944\n168#7:1950\n158#7,8:1953\n176#7:1961\n194#7,8:1966\n168#7:1974\n158#7,8:1977\n202#7:1985\n168#7:1986\n158#7,8:1987\n203#7:1995\n168#7:1996\n158#7,8:1997\n200#7:2005\n208#7,9:2010\n168#7:2019\n158#7,8:2022\n217#7:2030\n168#7:2031\n158#7,8:2032\n218#7:2040\n168#7:2041\n158#7,8:2042\n219#7:2050\n168#7:2051\n158#7,8:2052\n215#7:2060\n194#7,8:2065\n168#7:2073\n158#7,8:2076\n202#7:2084\n168#7:2085\n158#7,8:2086\n203#7:2094\n168#7:2095\n158#7,8:2096\n200#7:2104\n172#7,6:2116\n168#7:2122\n158#7,8:2125\n176#7:2133\n224#7,10:2166\n168#7:2176\n158#7,8:2179\n234#7:2187\n168#7:2188\n158#7,8:2189\n235#7:2197\n168#7:2198\n158#7,8:2199\n236#7:2207\n168#7:2208\n158#7,8:2209\n237#7:2217\n168#7:2218\n158#7,8:2219\n232#7:2227\n172#7,6:2239\n168#7:2245\n158#7,8:2248\n176#7:2256\n143#8,2:1146\n143#8,2:1207\n143#8,2:1270\n143#8,2:1342\n143#8,2:1410\n143#8,2:1467\n143#8,2:1518\n143#8,2:1586\n143#8,2:1709\n143#8,2:1766\n143#8,2:1817\n143#8,2:1880\n143#8,2:1951\n143#8,2:1975\n143#8,2:2020\n143#8,2:2074\n143#8,2:2123\n143#8,2:2177\n143#8,2:2246\n13#9,6:1166\n19#9,19:1176\n13#9,6:1228\n19#9,19:1238\n13#9,6:1301\n19#9,19:1311\n13#9,6:1363\n19#9,19:1373\n13#9,6:1421\n19#9,19:1431\n13#9,6:1478\n19#9,19:1488\n13#9,6:1539\n19#9,19:1549\n13#9,6:1597\n19#9,19:1607\n13#9,6:1630\n19#9,19:1640\n13#9,6:1663\n19#9,19:1673\n13#9,6:1720\n19#9,19:1730\n13#9,6:1777\n19#9,19:1787\n13#9,6:1838\n19#9,19:1848\n13#9,6:1911\n19#9,19:1921\n13#9,6:2134\n19#9,19:2144\n13#9,6:2257\n19#9,19:2267\n8#10,4:1172\n8#10,4:1234\n8#10,4:1307\n8#10,4:1369\n8#10,4:1427\n8#10,4:1484\n8#10,4:1545\n8#10,4:1603\n8#10,4:1636\n8#10,4:1669\n8#10,4:1726\n8#10,4:1783\n8#10,4:1844\n8#10,4:1917\n8#10,4:2140\n8#10,4:2263\n26#11:1629\n26#11:1662\n1#12:2294\n215#13,2:2295\n215#13,2:2297\n11065#14:2299\n11400#14,3:2300\n2730#15,7:2303\n*S KotlinDebug\n*F\n+ 1 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n89#1:1129\n89#1:1130\n89#1:1131\n89#1:1132,3\n89#1:2293\n103#1:1135,2\n708#1:2288,3\n730#1:2291,2\n112#1:1137\n112#1:1195,3\n172#1:1198\n172#1:1257,3\n203#1:1260\n203#1:1330,3\n217#1:1333\n217#1:1392,3\n256#1:1395,8\n256#1:1450,2\n283#1:1452,8\n283#1:1507,2\n344#1:1509\n344#1:1568,3\n362#1:1571,8\n362#1:1626,2\n379#1:1628\n379#1:1659,2\n388#1:1661\n388#1:1692,2\n397#1:1694,8\n397#1:1749,2\n411#1:1751,8\n411#1:1806,2\n427#1:1808\n427#1:1867,3\n446#1:1870\n446#1:1940,3\n463#1:1943\n463#1:1962,3\n478#1:1965\n478#1:2006,3\n507#1:2009\n507#1:2061,3\n559#1:2064\n559#1:2105,3\n621#1:2108,8\n621#1:2163,2\n626#1:2165\n626#1:2228,3\n691#1:2231,8\n691#1:2286,2\n112#1:1138,7\n112#1:1145\n112#1:1148,8\n112#1:1156\n112#1:1157\n112#1:1158,8\n172#1:1199,7\n172#1:1206\n172#1:1209,8\n172#1:1217\n172#1:1218\n172#1:1219,8\n172#1:1227\n203#1:1261,8\n203#1:1269\n203#1:1272,8\n203#1:1280\n203#1:1281\n203#1:1282,8\n203#1:1290\n203#1:1291\n203#1:1292,8\n203#1:1300\n217#1:1334,7\n217#1:1341\n217#1:1344,8\n217#1:1352\n217#1:1353\n217#1:1354,8\n217#1:1362\n256#1:1403,6\n256#1:1409\n256#1:1412,8\n256#1:1420\n283#1:1460,6\n283#1:1466\n283#1:1469,8\n283#1:1477\n344#1:1510,7\n344#1:1517\n344#1:1520,8\n344#1:1528\n344#1:1529\n344#1:1530,8\n344#1:1538\n362#1:1579,6\n362#1:1585\n362#1:1588,8\n362#1:1596\n397#1:1702,6\n397#1:1708\n397#1:1711,8\n397#1:1719\n411#1:1759,6\n411#1:1765\n411#1:1768,8\n411#1:1776\n427#1:1809,7\n427#1:1816\n427#1:1819,8\n427#1:1827\n427#1:1828\n427#1:1829,8\n427#1:1837\n446#1:1871,8\n446#1:1879\n446#1:1882,8\n446#1:1890\n446#1:1891\n446#1:1892,8\n446#1:1900\n446#1:1901\n446#1:1902,8\n446#1:1910\n463#1:1944,6\n463#1:1950\n463#1:1953,8\n463#1:1961\n478#1:1966,8\n478#1:1974\n478#1:1977,8\n478#1:1985\n478#1:1986\n478#1:1987,8\n478#1:1995\n478#1:1996\n478#1:1997,8\n478#1:2005\n507#1:2010,9\n507#1:2019\n507#1:2022,8\n507#1:2030\n507#1:2031\n507#1:2032,8\n507#1:2040\n507#1:2041\n507#1:2042,8\n507#1:2050\n507#1:2051\n507#1:2052,8\n507#1:2060\n559#1:2065,8\n559#1:2073\n559#1:2076,8\n559#1:2084\n559#1:2085\n559#1:2086,8\n559#1:2094\n559#1:2095\n559#1:2096,8\n559#1:2104\n621#1:2116,6\n621#1:2122\n621#1:2125,8\n621#1:2133\n626#1:2166,10\n626#1:2176\n626#1:2179,8\n626#1:2187\n626#1:2188\n626#1:2189,8\n626#1:2197\n626#1:2198\n626#1:2199,8\n626#1:2207\n626#1:2208\n626#1:2209,8\n626#1:2217\n626#1:2218\n626#1:2219,8\n626#1:2227\n691#1:2239,6\n691#1:2245\n691#1:2248,8\n691#1:2256\n112#1:1146,2\n172#1:1207,2\n203#1:1270,2\n217#1:1342,2\n256#1:1410,2\n283#1:1467,2\n344#1:1518,2\n362#1:1586,2\n397#1:1709,2\n411#1:1766,2\n427#1:1817,2\n446#1:1880,2\n463#1:1951,2\n478#1:1975,2\n507#1:2020,2\n559#1:2074,2\n621#1:2123,2\n626#1:2177,2\n691#1:2246,2\n112#1:1166,6\n112#1:1176,19\n172#1:1228,6\n172#1:1238,19\n203#1:1301,6\n203#1:1311,19\n217#1:1363,6\n217#1:1373,19\n256#1:1421,6\n256#1:1431,19\n283#1:1478,6\n283#1:1488,19\n344#1:1539,6\n344#1:1549,19\n362#1:1597,6\n362#1:1607,19\n379#1:1630,6\n379#1:1640,19\n388#1:1663,6\n388#1:1673,19\n397#1:1720,6\n397#1:1730,19\n411#1:1777,6\n411#1:1787,19\n427#1:1838,6\n427#1:1848,19\n446#1:1911,6\n446#1:1921,19\n621#1:2134,6\n621#1:2144,19\n691#1:2257,6\n691#1:2267,19\n112#1:1172,4\n172#1:1234,4\n203#1:1307,4\n217#1:1369,4\n256#1:1427,4\n283#1:1484,4\n344#1:1545,4\n362#1:1603,4\n379#1:1636,4\n388#1:1669,4\n397#1:1726,4\n411#1:1783,4\n427#1:1844,4\n446#1:1917,4\n621#1:2140,4\n691#1:2263,4\n379#1:1629\n388#1:1662\n886#1:2295,2\n903#1:2297,2\n1049#1:2299\n1049#1:2300,3\n1049#1:2303,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001:\u0005VWXYZB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J(\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010%\u001a\u00020&H\u0017J\u0018\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*H\u0082@\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u001aH\u0002J\u0018\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u000202H\u0002J \u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0012H\u0002J\u0010\u00104\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u00105\u001a\u0002062\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u00107\u001a\u0002082\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u000208H\u0002J\u0012\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u0010@\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010A\u001a\u0002082\u0006\u00100\u001a\u00020\u0016H\u0002J\u0012\u0010B\u001a\u0002082\u0008\u0010C\u001a\u0004\u0018\u00010\u0012H\u0003J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u0012H\u0002J\u001a\u0010F\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010G2\u0008\u0010H\u001a\u0004\u0018\u00010\u0012H\u0002J\u0016\u0010I\u001a\u0008\u0012\u0004\u0012\u0002020G2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0018\u0010J\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010G2\u0006\u00100\u001a\u00020\u0016H\u0002J \u0010K\u001a\u00020-2\u0006\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020\u001a2\u0006\u0010N\u001a\u00020\u0015H\u0002J\u0010\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RH\u0002J\u000c\u0010S\u001a\u00020-*\u00020\u0016H\u0002J\u000c\u0010T\u001a\u00020-*\u00020\u0016H\u0002J\u000c\u0010U\u001a\u00020\u001a*\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0017\u00a8\u0006["
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "dirPermissionsRequest",
        "Lexpo/modules/kotlin/Promise;",
        "moduleCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "okHttpClient",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "taskHandlers",
        "",
        "",
        "Lexpo/modules/filesystem/FileSystemModule$TaskHandler;",
        "isSAFUri",
        "",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)Z",
        "contentUriFromFile",
        "file",
        "Ljava/io/File;",
        "createRequestBody",
        "Lokhttp3/RequestBody;",
        "options",
        "Lexpo/modules/filesystem/FileSystemUploadOptions;",
        "decorator",
        "Lexpo/modules/filesystem/RequestBodyDecorator;",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "url",
        "fileUriString",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "downloadResumableTask",
        "",
        "params",
        "Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;",
        "(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureDirExists",
        "",
        "dir",
        "ensurePermission",
        "uri",
        "permission",
        "Lexpo/modules/interfaces/filesystem/Permission;",
        "errorMsg",
        "forceDelete",
        "getFileSize",
        "",
        "getInputStream",
        "Ljava/io/InputStream;",
        "getInputStreamBytes",
        "",
        "inputStream",
        "getNearestSAFFile",
        "Landroidx/documentfile/provider/DocumentFile;",
        "getOutputStream",
        "Ljava/io/OutputStream;",
        "md5",
        "openAssetInputStream",
        "openResourceInputStream",
        "resourceName",
        "parseFileUri",
        "uriStr",
        "permissionsForPath",
        "Ljava/util/EnumSet;",
        "path",
        "permissionsForSAFUri",
        "permissionsForUri",
        "transformFilesFromSAF",
        "documentFile",
        "outputDir",
        "copy",
        "translateHeaders",
        "Landroid/os/Bundle;",
        "headers",
        "Lokhttp3/Headers;",
        "checkIfFileDirExists",
        "checkIfFileExists",
        "toFile",
        "DownloadResumableTaskParams",
        "DownloadTaskHandler",
        "ProgressListener",
        "ProgressResponseBody",
        "TaskHandler",
        "expo-file-system_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

.field private final moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final taskHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/filesystem/FileSystemModule$TaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->taskHandlers:Ljava/util/Map;

    .line 86
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 80
    return-void
.end method

.method public static final synthetic access$checkIfFileDirExists(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "$receiver"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->checkIfFileDirExists(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$contentUriFromFile(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "file"    # Ljava/io/File;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createUploadRequest(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileUriString"    # Ljava/lang/String;
    .param p3, "options"    # Lexpo/modules/filesystem/FileSystemUploadOptions;
    .param p4, "decorator"    # Lexpo/modules/filesystem/RequestBodyDecorator;

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/filesystem/FileSystemModule;->createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "params"    # Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule;->downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$ensureDirExists(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "dir"    # Ljava/io/File;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->ensureDirExists(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Lexpo/modules/interfaces/filesystem/Permission;

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Lexpo/modules/interfaces/filesystem/Permission;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$forceDelete(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "file"    # Ljava/io/File;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->forceDelete(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;)Lexpo/modules/kotlin/Promise;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;

    .line 80
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-object v0
.end method

.method public static final synthetic access$getFileSize(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)J
    .locals 2
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "file"    # Ljava/io/File;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getInputStreamBytes(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getInputStreamBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getModuleCoroutineScope$p(Lexpo/modules/filesystem/FileSystemModule;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;

    .line 80
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final synthetic access$getNearestSAFFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getOutputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;

    .line 80
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->taskHandlers:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$isSAFUri(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "$receiver"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "file"    # Ljava/io/File;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$openAssetInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$openResourceInputStream(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "resourceName"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parseFileUri(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "uriStr"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->parseFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$setDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/Promise;

    .line 80
    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-void
.end method

.method public static final synthetic access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "$receiver"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$transformFilesFromSAF(Lexpo/modules/filesystem/FileSystemModule;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 0
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;
    .param p2, "outputDir"    # Ljava/io/File;
    .param p3, "copy"    # Z

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    return-void
.end method

.method public static final synthetic access$translateHeaders(Lexpo/modules/filesystem/FileSystemModule;Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/filesystem/FileSystemModule;
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private final checkIfFileDirExists(Landroid/net/Uri;)V
    .locals 7
    .param p1, "$this$checkIfFileDirExists"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 750
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 751
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    return-void

    .line 752
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Directory for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' doesn\'t exist. Please make sure directory \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' exists before calling downloadAsync."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final checkIfFileExists(Landroid/net/Uri;)V
    .locals 5
    .param p1, "$this$checkIfFileExists"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 742
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    return-void

    .line 743
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' doesn\'t exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .line 872
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 873
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".FileSystemFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    nop

    .line 871
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "getUriForFile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final createRequestBody(Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 11
    .param p1, "options"    # Lexpo/modules/filesystem/FileSystemUploadOptions;
    .param p2, "decorator"    # Lexpo/modules/filesystem/RequestBodyDecorator;
    .param p3, "file"    # Ljava/io/File;

    .line 894
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getUploadType()Lexpo/modules/filesystem/FileSystemUploadType;

    move-result-object v0

    sget-object v1, Lexpo/modules/filesystem/FileSystemModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemUploadType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 909
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 900
    :pswitch_0
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 901
    .local v0, "bodyBuilder":Lokhttp3/MultipartBody$Builder;
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .local v1, "it":Ljava/util/Map;
    const/4 v2, 0x0

    .line 902
    .local v2, "$i$a$-let-FileSystemModule$createRequestBody$1":I
    nop

    .line 903
    move-object v3, v1

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 2297
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 903
    .local v7, "$i$a$-forEach-FileSystemModule$createRequestBody$1$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 2297
    .end local v7    # "$i$a$-forEach-FileSystemModule$createRequestBody$1$1":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 2298
    :cond_0
    nop

    .line 904
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 901
    .end local v1    # "it":Ljava/util/Map;
    .end local v2    # "$i$a$-let-FileSystemModule$createRequestBody$1":I
    nop

    .line 905
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guessContentTypeFromName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    .local v1, "mimeType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getFieldName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "fieldName":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v5, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-interface {p2, v4}, Lexpo/modules/filesystem/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 909
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .end local v0    # "bodyBuilder":Lokhttp3/MultipartBody$Builder;
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "fieldName":Ljava/lang/String;
    check-cast v0, Lokhttp3/RequestBody;

    goto :goto_1

    .line 896
    :pswitch_1
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0, p3, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-interface {p2, v0}, Lexpo/modules/filesystem/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 894
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileUriString"    # Ljava/lang/String;
    .param p3, "options"    # Lexpo/modules/filesystem/FileSystemUploadOptions;
    .param p4, "decorator"    # Lexpo/modules/filesystem/RequestBodyDecorator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 880
    invoke-static {p2}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 881
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-direct {p0, v0, v1}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 882
    invoke-direct {p0, v0}, Lexpo/modules/filesystem/FileSystemModule;->checkIfFileExists(Landroid/net/Uri;)V

    .line 884
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 885
    .local v1, "requestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p3}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .local v2, "it":Ljava/util/Map;
    const/4 v3, 0x0

    .line 886
    .local v3, "$i$a$-let-FileSystemModule$createUploadRequest$1":I
    move-object v4, v2

    .local v4, "$this$forEach$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 2295
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 886
    .local v8, "$i$a$-forEach-FileSystemModule$createUploadRequest$1$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v1, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 2295
    .end local v8    # "$i$a$-forEach-FileSystemModule$createUploadRequest$1$1":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    nop

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 2296
    :cond_0
    nop

    .line 887
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .end local v5    # "$i$f$forEach":I
    nop

    .line 885
    .end local v2    # "it":Ljava/util/Map;
    .end local v3    # "$i$a$-let-FileSystemModule$createUploadRequest$1":I
    nop

    .line 889
    :cond_1
    invoke-direct {p0, v0}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p3, p4, v2}, Lexpo/modules/filesystem/FileSystemModule;->createRequestBody(Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 890
    .local v2, "body":Lokhttp3/RequestBody;
    invoke-virtual {p3}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getHttpMethod()Lexpo/modules/filesystem/HttpMethod;

    move-result-object v3

    .line 2294
    .local v3, "it":Lexpo/modules/filesystem/HttpMethod;
    const/4 v4, 0x0

    .line 890
    .local v4, "$i$a$-let-FileSystemModule$createUploadRequest$2":I
    invoke-virtual {v3}, Lexpo/modules/filesystem/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .end local v3    # "it":Lexpo/modules/filesystem/HttpMethod;
    .end local v4    # "$i$a$-let-FileSystemModule$createUploadRequest$2":I
    return-object v3
.end method

.method private final downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 922
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;-><init>(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lexpo/modules/filesystem/FileSystemModule;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 952
    return-object v0
.end method

.method private final ensureDirExists(Ljava/io/File;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_1
    :goto_0
    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Lexpo/modules/interfaces/filesystem/Permission;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    const-string v1, "Location \'"

    if-ne p2, v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t readable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    .line 804
    :cond_0
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    if-ne p2, v0, :cond_1

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t writable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    .line 807
    :cond_1
    invoke-virtual {p2}, Lexpo/modules/interfaces/filesystem/Permission;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t have permission \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Lexpo/modules/interfaces/filesystem/Permission;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 797
    return-void

    .line 795
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final forceDelete(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1024
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1025
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .line 1026
    .local v1, "exception":Ljava/io/IOException;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 1027
    .local v4, "f":Ljava/io/File;
    nop

    .line 1028
    :try_start_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lexpo/modules/filesystem/FileSystemModule;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1029
    :catch_0
    move-exception v5

    .line 1030
    .local v5, "ioe":Ljava/io/IOException;
    move-object v1, v5

    .line 1026
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1033
    :cond_0
    if-nez v1, :cond_2

    .line 1036
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 1037
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1034
    :cond_2
    throw v1

    .line 1024
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "exception":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list contents of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1042
    :goto_2
    return-void

    .line 1040
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private final getFileSize(Ljava/io/File;)J
    .locals 13
    .param p1, "file"    # Ljava/io/File;

    .line 1045
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 1048
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    return-wide v1

    .line 1049
    .local v0, "content":[Ljava/io/File;
    :cond_1
    move-object v3, v0

    .local v3, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 2299
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 2300
    .local v7, "$i$f$mapTo":I
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v6, v9

    .line 2301
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Ljava/io/File;
    const/4 v12, 0x0

    .line 1049
    .local v12, "$i$a$-map-FileSystemModule$getFileSize$1":I
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v11}, Lexpo/modules/filesystem/FileSystemModule;->getFileSize(Ljava/io/File;)J

    move-result-wide v11

    .end local v11    # "it":Ljava/io/File;
    .end local v12    # "$i$a$-map-FileSystemModule$getFileSize$1":I
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2301
    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2300
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2302
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 2299
    nop

    .line 1049
    .end local v3    # "$this$map$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$map":I
    move-object v3, v5

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$reduceOrNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 2303
    .local v4, "$i$f$reduceOrNull":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2304
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    .line 2305
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 2306
    .local v6, "accumulator$iv":Ljava/lang/Object;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2307
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .local v7, "itemSize":J
    move-object v9, v6

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .local v9, "total":J
    const/4 v11, 0x0

    .line 1049
    .local v11, "$i$a$-reduceOrNull-FileSystemModule$getFileSize$2":I
    add-long/2addr v9, v7

    .end local v7    # "itemSize":J
    .end local v9    # "total":J
    .end local v11    # "$i$a$-reduceOrNull-FileSystemModule$getFileSize$2":I
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 2307
    move-object v6, v7

    goto :goto_1

    .line 2309
    :cond_4
    nop

    .line 1049
    .end local v3    # "$this$reduceOrNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$reduceOrNull":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v6    # "accumulator$iv":Ljava/lang/Object;
    :goto_2
    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_3

    .line 1050
    :cond_5
    nop

    .line 1049
    :goto_3
    return-wide v1
.end method

.method private final getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1054
    nop

    .line 1055
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    .line 1056
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1057
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1059
    :goto_0
    return-object v0

    .line 1058
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme for location \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getInputStreamBytes(Ljava/io/InputStream;)[B
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, "bytesResult":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1093
    .local v1, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x400

    .line 1094
    .local v2, "bufferSize":I
    new-array v3, v2, [B

    .line 1095
    .local v3, "buffer":[B
    nop

    .line 1096
    const/4 v4, 0x0

    .line 1097
    .local v4, "len":I
    :goto_0
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .line 2294
    .local v6, "it":I
    const/4 v7, 0x0

    .line 1097
    .local v7, "$i$a$-also-FileSystemModule$getInputStreamBytes$1":I
    move v4, v6

    .end local v6    # "it":I
    .end local v7    # "$i$a$-also-FileSystemModule$getInputStreamBytes$1":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1098
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "toByteArray(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 1102
    .end local v4    # "len":I
    nop

    .line 1103
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1104
    :catch_0
    move-exception v4

    .line 1106
    :goto_1
    nop

    .line 1107
    return-object v0

    .line 1102
    :catchall_0
    move-exception v4

    .line 1103
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1104
    :catch_1
    move-exception v5

    :goto_2
    throw v4
.end method

.method private final getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1069
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 1070
    .local v0, "file":Landroidx/documentfile/provider/DocumentFile;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    move-object v1, v0

    goto :goto_0

    .line 1073
    :cond_0
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 1070
    :goto_0
    return-object v1
.end method

.method private final declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 997
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 998
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 999
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 1000
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 997
    nop

    .line 1002
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;

    .line 1004
    .end local v0    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local p0    # "this":Lexpo/modules/filesystem/FileSystemModule;
    :cond_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 995
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    nop

    .line 1063
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/OutputStream;

    goto :goto_0

    .line 1064
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1062
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1066
    return-object v0

    .line 1065
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported scheme for location \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isSAFUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "$this$isSAFUri"    # Landroid/net/Uri;

    .line 1085
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "com.android.externalstorage"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    .line 1010
    .local v0, "inputStream":Ljava/io/InputStream;
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .local v2, "it":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1011
    .local v3, "$i$a$-use-FileSystemModule$md5$1":I
    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v4

    .line 1012
    .local v4, "md5bytes":[B
    invoke-static {v4}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    const-string v6, "encodeHex(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    .end local v2    # "it":Ljava/io/InputStream;
    .end local v3    # "$i$a$-use-FileSystemModule$md5$1":I
    .end local v4    # "md5bytes":[B
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v6

    :catchall_0
    move-exception v2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private final openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "requireNotNull(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .local v0, "asset":Ljava/lang/String;
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "open(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 813
    .end local v0    # "asset":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "resourceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 821
    .local v0, "resourceId":I
    if-nez v0, :cond_1

    .line 823
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 824
    if-eqz v0, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No resource found with the name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 828
    :cond_1
    :goto_0
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "openRawResource(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "uriStr"    # Ljava/lang/String;

    .line 1087
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 764
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 777
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .local v0, "documentFile":Landroidx/documentfile/provider/DocumentFile;
    const-class v1, Lexpo/modules/interfaces/filesystem/Permission;

    .line 778
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$permissionsForSAFUri_u24lambda_u2449":Ljava/util/EnumSet;
    const/4 v3, 0x0

    .line 779
    .local v3, "$i$a$-apply-FileSystemModule$permissionsForSAFUri$1":I
    if-eqz v0, :cond_1

    .line 780
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    sget-object v4, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v2, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 784
    sget-object v4, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v2, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_1
    nop

    .line 778
    .end local v2    # "$this$permissionsForSAFUri_u24lambda_u2449":Ljava/util/EnumSet;
    .end local v3    # "$i$a$-apply-FileSystemModule$permissionsForSAFUri$1":I
    const-string v2, "apply(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 767
    nop

    .line 768
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 772
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-class v0, Lexpo/modules/interfaces/filesystem/Permission;

    .line 773
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0
.end method

.method private final toFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3
    .param p1, "$this$toFile"    # Landroid/net/Uri;

    .line 1078
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1082
    return-object v0

    .line 1081
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 10
    .param p1, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;
    .param p2, "outputDir"    # Ljava/io/File;
    .param p3, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    return-void

    .line 836
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Couldn\'t create folder in output dir."

    if-nez v0, :cond_3

    .line 837
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "it":Ljava/io/File;
    const/4 v2, 0x0

    .line 838
    .local v2, "$i$a$-let-FileSystemModule$transformFilesFromSAF$1":I
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 839
    :cond_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 841
    :cond_2
    :goto_0
    nop

    .line 837
    .end local v0    # "it":Ljava/io/File;
    .end local v2    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$1":I
    goto :goto_1

    .line 842
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 843
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 847
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const-string v1, "listFiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 848
    .local v3, "file":Landroidx/documentfile/provider/DocumentFile;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    .line 847
    .end local v3    # "file":Landroidx/documentfile/provider/DocumentFile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 850
    :cond_6
    if-nez p3, :cond_7

    .line 851
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 853
    :cond_7
    return-void

    .line 856
    :cond_8
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 857
    .local v1, "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 858
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 860
    :cond_9
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    :goto_3
    nop

    .line 862
    .local v2, "newFile":Ljava/io/File;
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    .line 863
    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/InputStream;

    .line 2294
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 863
    .local v5, "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v6, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v6

    check-cast v7, Ljava/io/FileOutputStream;

    .line 2294
    .local v7, "out":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 863
    .local v8, "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1$1":I
    move-object v9, v7

    check-cast v9, Ljava/io/OutputStream;

    invoke-static {v4, v9}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .end local v8    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1$1":I
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 864
    if-nez p3, :cond_a

    .line 865
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    .line 867
    :cond_a
    nop

    .line 856
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .end local v2    # "newFile":Ljava/io/File;
    goto :goto_4

    .line 863
    .restart local v0    # "it":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    :catchall_0
    move-exception v7

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .end local v2    # "newFile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    .end local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .end local p2    # "outputDir":Ljava/io/File;
    .end local p3    # "copy":Z
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "it":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    .restart local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local p2    # "outputDir":Ljava/io/File;
    .restart local p3    # "copy":Z
    :catchall_1
    move-exception v8

    :try_start_4
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .end local v2    # "newFile":Ljava/io/File;
    .end local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .end local p2    # "outputDir":Ljava/io/File;
    .end local p3    # "copy":Z
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-FileSystemModule$transformFilesFromSAF$2$1":I
    .restart local v0    # "it":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local p2    # "outputDir":Ljava/io/File;
    .restart local p3    # "copy":Z
    :catchall_2
    move-exception v4

    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .end local v2    # "newFile":Ljava/io/File;
    .end local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .end local p2    # "outputDir":Ljava/io/File;
    .end local p3    # "copy":Z
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v0    # "it":Ljava/lang/String;
    .restart local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .restart local v2    # "newFile":Ljava/io/File;
    .restart local p1    # "documentFile":Landroidx/documentfile/provider/DocumentFile;
    .restart local p2    # "outputDir":Ljava/io/File;
    .restart local p3    # "copy":Z
    :catchall_3
    move-exception v5

    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 868
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-let-FileSystemModule$transformFilesFromSAF$2":I
    .end local v2    # "newFile":Ljava/io/File;
    :cond_b
    :goto_4
    return-void
.end method

.method private final translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 7
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 1112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1113
    .local v0, "responseHeaders":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1114
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, "headerName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    nop

    .line 1118
    nop

    .line 1119
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1117
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1122
    :cond_0
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    .end local v3    # "headerName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1125
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 38

    .line 89
    move-object/from16 v1, p0

    const-string v2, "/"

    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/modules/Module;

    .local v3, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    const/4 v4, 0x0

    .line 1129
    .local v4, "$i$f$ModuleDefinition":I
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ModuleDefinition"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "blockName$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1130
    .local v6, "$i$f$trace":I
    const-string v7, "ExpoModulesCore"

    .local v7, "tag$iv$iv$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1131
    .local v8, "$i$f$trace":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "label$iv$iv$iv$iv":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1132
    .local v10, "$i$f$trace":I
    invoke-static {v9}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 1133
    nop

    .line 1134
    const/4 v11, 0x0

    .line 1129
    .local v11, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :try_start_0
    new-instance v12, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v12, v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    move-object v13, v12

    .local v13, "$this$definition_u24lambda_u2448":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    const/4 v14, 0x0

    .line 90
    .local v14, "$i$a$-ModuleDefinition-FileSystemModule$definition$1":I
    const-string v15, "ExponentFileSystem"

    invoke-virtual {v13, v15}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 92
    nop

    .line 93
    const/4 v15, 0x3

    move-object/from16 v16, v3

    .end local v3    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .local v16, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    :try_start_1
    new-array v3, v15, [Lkotlin/Pair;

    const-string v15, "documentDirectory"

    invoke-static/range {p0 .. p0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v19, v4

    .end local v4    # "$i$f$ModuleDefinition":I
    .local v19, "$i$f$ModuleDefinition":I
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v18, v5

    .end local v5    # "blockName$iv$iv":Ljava/lang/String;
    .local v18, "blockName$iv$iv":Ljava/lang/String;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 94
    const-string v4, "cacheDirectory"

    invoke-static/range {p0 .. p0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 93
    nop

    .line 95
    const-string v2, "bundleDirectory"

    const-string v5, "asset:///"

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    .line 93
    nop

    .line 92
    invoke-virtual {v13, v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants([Lkotlin/Pair;)V

    .line 98
    nop

    .line 99
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "expo-file-system.downloadProgress"

    const/4 v15, 0x0

    aput-object v3, v2, v15

    .line 100
    const-string v3, "expo-file-system.uploadProgress"

    aput-object v3, v2, v4

    .line 99
    nop

    .line 98
    invoke-virtual {v13, v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 103
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v2, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v3, 0x0

    .line 1135
    .local v3, "$i$f$OnCreate":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v15

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/kotlin/events/BasicEventListener;

    move-object/from16 v23, v2

    .end local v2    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .local v23, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    sget-object v2, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    move/from16 v24, v3

    .end local v3    # "$i$f$OnCreate":I
    .local v24, "$i$f$OnCreate":I
    new-instance v3, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnCreate$1;

    invoke-direct {v3, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnCreate$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v5, v2, v3}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    nop

    .line 112
    .end local v23    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v24    # "$i$f$OnCreate":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getInfoAsync"

    .local v2, "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .local v3, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1137
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1138
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1139
    const-class v15, Ljava/lang/String;

    .line 1138
    .local v15, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1140
    const-class v23, Lexpo/modules/filesystem/InfoOptions;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1138
    .local v23, "p1$iv$iv":Ljava/lang/Class;
    const/16 v24, 0x0

    .line 1144
    .local v24, "$i$f$toArgsArray":I
    move/from16 v25, v4

    move/from16 v26, v6

    const/4 v4, 0x2

    .end local v4    # "$i$f$AsyncFunction":I
    .end local v6    # "$i$f$trace":I
    .local v25, "$i$f$AsyncFunction":I
    .local v26, "$i$f$trace":I
    :try_start_4
    new-array v6, v4, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v4, 0x0

    .line 1145
    .local v4, "$i$f$toAnyType":I
    sget-object v27, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v27, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v28, 0x0

    .line 1146
    .local v28, "$i$f$cachedAnyType":I
    move/from16 v29, v4

    .end local v4    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    new-instance v4, Lkotlin/Pair;

    const-class v30, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v31, v7

    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .local v31, "tag$iv$iv$iv":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v30 .. v30}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v30, v8

    const/16 v20, 0x0

    .end local v8    # "$i$f$trace":I
    .local v30, "$i$f$trace":I
    :try_start_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1147
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v27 .. v27}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1145
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v28    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_0

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$1;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 1148
    .local v7, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1149
    move/from16 v27, v7

    .end local v7    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v28, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v32, v9

    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v32, "label$iv$iv$iv$iv":Ljava/lang/String;
    :try_start_7
    invoke-static/range {v28 .. v28}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1151
    nop

    .line 1152
    nop

    .line 1149
    move/from16 v28, v10

    const/4 v10, 0x0

    .end local v10    # "$i$f$trace":I
    .local v28, "$i$f$trace":I
    :try_start_8
    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1154
    nop

    .line 1148
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1155
    move-object v7, v8

    goto :goto_0

    .line 2293
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v13    # "$this$definition_u24lambda_u2448":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v14    # "$i$a$-ModuleDefinition-FileSystemModule$definition$1":I
    .end local v15    # "p0$iv$iv":Ljava/lang/Class;
    .end local v23    # "p1$iv$iv":Ljava/lang/Class;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "$i$f$AsyncFunction":I
    .end local v27    # "$i$f$toAnyType":I
    .end local v28    # "$i$f$trace":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v10    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    move/from16 v28, v10

    move-object v2, v0

    .end local v10    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    goto/16 :goto_21

    .line 1145
    .end local v28    # "$i$f$trace":I
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    .restart local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    .restart local v11    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v13    # "$this$definition_u24lambda_u2448":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .restart local v14    # "$i$a$-ModuleDefinition-FileSystemModule$definition$1":I
    .restart local v15    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v23    # "p1$iv$iv":Ljava/lang/Class;
    .restart local v24    # "$i$f$toArgsArray":I
    .restart local v25    # "$i$f$AsyncFunction":I
    .restart local v29    # "$i$f$toAnyType":I
    :cond_0
    move-object/from16 v32, v9

    move/from16 v28, v10

    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .end local v29    # "$i$f$toAnyType":I
    aput-object v7, v6, v4

    .line 1144
    nop

    .line 1156
    const/4 v4, 0x0

    .line 1157
    .local v4, "$i$f$toAnyType":I
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v7, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v8, 0x0

    .line 1146
    .local v8, "$i$f$cachedAnyType":I
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/InfoOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move/from16 v27, v4

    const/16 v20, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v9, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    .line 1147
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1157
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v7    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v8    # "$i$f$cachedAnyType":I
    if-nez v9, :cond_1

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 1158
    .local v7, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1159
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/filesystem/InfoOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 1161
    nop

    .line 1162
    nop

    .line 1159
    move/from16 v29, v7

    const/4 v7, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-direct {v8, v10, v7, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 1164
    nop

    .line 1158
    invoke-direct {v9, v8, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1165
    nop

    .line 1157
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v29    # "$i$f$toAnyType":I
    :cond_1
    const/4 v4, 0x1

    .end local v27    # "$i$f$toAnyType":I
    aput-object v9, v6, v4

    .line 1144
    nop

    .line 1143
    nop

    .line 1137
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v15    # "p0$iv$iv":Ljava/lang/Class;
    .end local v23    # "p1$iv$iv":Ljava/lang/Class;
    .end local v24    # "$i$f$toArgsArray":I
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v6

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1166
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Landroid/os/Bundle;

    .line 1169
    nop

    .line 1170
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1171
    const/4 v7, 0x0

    .line 1172
    .local v7, "$i$f$enforceType":I
    nop

    .line 1175
    nop

    .line 1176
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1178
    :cond_2
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1179
    const/4 v7, 0x0

    .line 1172
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1175
    nop

    .line 1180
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1182
    :cond_3
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1183
    const/4 v7, 0x0

    .line 1172
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1175
    nop

    .line 1184
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1186
    :cond_4
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1187
    const/4 v7, 0x0

    .line 1172
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1175
    nop

    .line 1188
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1190
    :cond_5
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1191
    const/4 v7, 0x0

    .line 1172
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1175
    nop

    .line 1192
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1

    .line 1194
    :cond_6
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1169
    :goto_1
    nop

    .line 1195
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1196
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    nop

    .line 1195
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 1137
    nop

    .line 172
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v25    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readAsStringAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1198
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1199
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1200
    const-class v6, Ljava/lang/String;

    .line 1199
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1201
    const-class v7, Lexpo/modules/filesystem/ReadingOptions;

    .line 1199
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 1205
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 1206
    .local v9, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 1207
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;

    move-object/from16 v27, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v27, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v25, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v25, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1208
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1206
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_7

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$4;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1209
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1210
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;

    move/from16 v29, v6

    .end local v6    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1212
    nop

    .line 1213
    nop

    .line 1210
    move/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v23, "$i$f$toArgsArray":I
    invoke-direct {v15, v6, v8, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 1215
    nop

    .line 1209
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1216
    move-object v6, v7

    goto :goto_2

    .line 1206
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_7
    move/from16 v23, v8

    .end local v8    # "$i$f$toArgsArray":I
    .restart local v23    # "$i$f$toArgsArray":I
    :goto_2
    const/4 v4, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v10, v4

    .line 1205
    nop

    .line 1217
    const/4 v4, 0x0

    .line 1218
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1207
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/filesystem/ReadingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v29, v4

    const/4 v15, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1208
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1218
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_8

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$5;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1219
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1220
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/filesystem/ReadingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1222
    nop

    .line 1223
    nop

    .line 1220
    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1225
    nop

    .line 1219
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1226
    nop

    .line 1218
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_8
    const/4 v4, 0x1

    .end local v29    # "$i$f$toAnyType":I
    aput-object v8, v10, v4

    .line 1205
    nop

    .line 1227
    nop

    .line 1198
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v25    # "p1$iv$iv":Ljava/lang/Class;
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v10

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1228
    .local v6, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 1229
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1257
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1258
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    nop

    .line 1257
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 1198
    nop

    .line 203
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "writeAsStringAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1260
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1261
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1262
    const-class v6, Ljava/lang/String;

    .line 1261
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1263
    const-class v7, Ljava/lang/String;

    .line 1261
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 1264
    const-class v8, Lexpo/modules/filesystem/WritingOptions;

    .line 1261
    .local v8, "p2$iv$iv":Ljava/lang/Class;
    const/4 v9, 0x0

    .line 1268
    .local v9, "$i$f$toArgsArray":I
    const/4 v10, 0x3

    new-array v15, v10, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v10, 0x0

    .line 1269
    .local v10, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 1270
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v25, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v27, Ljava/lang/String;

    move-object/from16 v29, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v29, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v27, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v27, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1271
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1269
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_9

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$7;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$7;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1272
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1273
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;

    move-object/from16 v33, v8

    .end local v8    # "p2$iv$iv":Ljava/lang/Class;
    .local v33, "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 1275
    nop

    .line 1276
    nop

    .line 1273
    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$toArgsArray":I
    .local v24, "$i$f$toArgsArray":I
    invoke-direct {v6, v8, v9, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 1278
    nop

    .line 1272
    invoke-direct {v7, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1279
    move-object v6, v7

    goto :goto_3

    .line 1269
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$toArgsArray":I
    .end local v33    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v8    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v9    # "$i$f$toArgsArray":I
    :cond_9
    move-object/from16 v33, v8

    move/from16 v24, v9

    .end local v8    # "p2$iv$iv":Ljava/lang/Class;
    .end local v9    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    .restart local v33    # "p2$iv$iv":Ljava/lang/Class;
    :goto_3
    const/4 v4, 0x0

    .end local v10    # "$i$f$toAnyType":I
    aput-object v6, v15, v4

    .line 1268
    nop

    .line 1280
    const/4 v4, 0x0

    .line 1281
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1270
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v23, v4

    const/4 v10, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1271
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1281
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_a

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$8;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$8;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1282
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1283
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1285
    nop

    .line 1286
    nop

    .line 1283
    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1288
    nop

    .line 1282
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1289
    nop

    .line 1281
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_a
    const/4 v4, 0x1

    .end local v23    # "$i$f$toAnyType":I
    aput-object v8, v15, v4

    .line 1268
    nop

    .line 1290
    const/4 v4, 0x0

    .line 1291
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1270
    .restart local v7    # "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/filesystem/WritingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v23, v4

    const/4 v10, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1271
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1291
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_b

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$9;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1292
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1293
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/filesystem/WritingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1295
    nop

    .line 1296
    nop

    .line 1293
    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1298
    nop

    .line 1292
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1299
    nop

    .line 1291
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_b
    const/4 v4, 0x2

    .end local v23    # "$i$f$toAnyType":I
    aput-object v8, v15, v4

    .line 1268
    nop

    .line 1300
    nop

    .line 1260
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v27    # "p1$iv$iv":Ljava/lang/Class;
    .end local v29    # "p0$iv$iv":Ljava/lang/Class;
    .end local v33    # "p2$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v15

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1301
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Lkotlin/Unit;

    .line 1304
    nop

    .line 1305
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1306
    const/4 v7, 0x0

    .line 1307
    .local v7, "$i$f$enforceType":I
    nop

    .line 1310
    nop

    .line 1311
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 1313
    :cond_c
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1314
    const/4 v7, 0x0

    .line 1307
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1310
    nop

    .line 1315
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 1317
    :cond_d
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1318
    const/4 v7, 0x0

    .line 1307
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1310
    nop

    .line 1319
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 1321
    :cond_e
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1322
    const/4 v7, 0x0

    .line 1307
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1310
    nop

    .line 1323
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 1325
    :cond_f
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1326
    const/4 v7, 0x0

    .line 1307
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1310
    nop

    .line 1327
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_4

    .line 1329
    :cond_10
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1304
    :goto_4
    nop

    .line 1330
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1331
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$13$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    nop

    .line 1330
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$13$iv":I
    nop

    .line 1260
    nop

    .line 217
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v25    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "deleteAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1333
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1334
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1335
    const-class v6, Ljava/lang/String;

    .line 1334
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1336
    const-class v7, Lexpo/modules/filesystem/DeletingOptions;

    .line 1334
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 1340
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 1341
    .local v9, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 1342
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;

    move-object/from16 v27, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v27, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v25, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v25, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1343
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1341
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_11

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$11;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$11;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1344
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1345
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;

    move/from16 v29, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1347
    nop

    .line 1348
    nop

    .line 1345
    move/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v23, "$i$f$toArgsArray":I
    invoke-direct {v15, v6, v8, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 1350
    nop

    .line 1344
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1351
    move-object v6, v7

    goto :goto_5

    .line 1341
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_11
    move/from16 v23, v8

    .end local v8    # "$i$f$toArgsArray":I
    .restart local v23    # "$i$f$toArgsArray":I
    :goto_5
    const/4 v4, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v10, v4

    .line 1340
    nop

    .line 1352
    const/4 v4, 0x0

    .line 1353
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1342
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/filesystem/DeletingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v29, v4

    const/4 v15, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1343
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1353
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_12

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$12;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$12;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1354
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1355
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/filesystem/DeletingOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1357
    nop

    .line 1358
    nop

    .line 1355
    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1360
    nop

    .line 1354
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1361
    nop

    .line 1353
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_12
    const/4 v4, 0x1

    .end local v29    # "$i$f$toAnyType":I
    aput-object v8, v10, v4

    .line 1340
    nop

    .line 1362
    nop

    .line 1333
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v25    # "p1$iv$iv":Ljava/lang/Class;
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$13;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$13;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v10

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1363
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Lkotlin/Unit;

    .line 1366
    nop

    .line 1367
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1368
    const/4 v7, 0x0

    .line 1369
    .local v7, "$i$f$enforceType":I
    nop

    .line 1372
    nop

    .line 1373
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 1375
    :cond_13
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1376
    const/4 v7, 0x0

    .line 1369
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1372
    nop

    .line 1377
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 1379
    :cond_14
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1380
    const/4 v7, 0x0

    .line 1369
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1372
    nop

    .line 1381
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 1383
    :cond_15
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1384
    const/4 v7, 0x0

    .line 1369
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1372
    nop

    .line 1385
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 1387
    :cond_16
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1388
    const/4 v7, 0x0

    .line 1369
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1372
    nop

    .line 1389
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_6

    .line 1391
    :cond_17
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1366
    :goto_6
    nop

    .line 1392
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1393
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    nop

    .line 1392
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 1333
    nop

    .line 256
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "moveAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1395
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Lexpo/modules/filesystem/RelocatingOptions;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1396
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1402
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$14;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$14;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1396
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v23, v4

    goto/16 :goto_8

    .line 1398
    :cond_18
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1403
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1404
    const-class v6, Lexpo/modules/filesystem/RelocatingOptions;

    .line 1403
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1408
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 1409
    .local v8, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v10, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 1410
    .local v15, "$i$f$cachedAnyType":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v23, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Lexpo/modules/filesystem/RelocatingOptions;

    move-object/from16 v25, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v25, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .local v24, "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1411
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1409
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_19

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$15;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$15;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1412
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1413
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 1415
    nop

    .line 1416
    nop

    .line 1413
    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    invoke-direct {v10, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1418
    nop

    .line 1412
    invoke-direct {v7, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1419
    move-object v6, v7

    .line 1409
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_19
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 1408
    nop

    .line 1420
    nop

    .line 1398
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$16;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$16;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1421
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Lkotlin/Unit;

    .line 1424
    nop

    .line 1425
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1426
    const/4 v7, 0x0

    .line 1427
    .local v7, "$i$f$enforceType":I
    nop

    .line 1430
    nop

    .line 1431
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1433
    :cond_1a
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1434
    const/4 v7, 0x0

    .line 1427
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1430
    nop

    .line 1435
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1437
    :cond_1b
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1438
    const/4 v7, 0x0

    .line 1427
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1430
    nop

    .line 1439
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1441
    :cond_1c
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1442
    const/4 v7, 0x0

    .line 1427
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1430
    nop

    .line 1443
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1445
    :cond_1d
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1446
    const/4 v7, 0x0

    .line 1427
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1430
    nop

    .line 1447
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_7

    .line 1449
    :cond_1e
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1424
    :goto_7
    move-object v5, v7

    .line 1402
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_8
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1450
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    nop

    .line 1402
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 1395
    nop

    .line 283
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "copyAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1452
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Lexpo/modules/filesystem/RelocatingOptions;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1453
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1459
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$17;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$17;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1453
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v23, v4

    goto/16 :goto_a

    .line 1455
    :cond_1f
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1460
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1461
    const-class v6, Lexpo/modules/filesystem/RelocatingOptions;

    .line 1460
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1465
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 1466
    .restart local v8    # "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 1467
    .restart local v15    # "$i$f$cachedAnyType":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .restart local v23    # "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Lexpo/modules/filesystem/RelocatingOptions;

    move-object/from16 v25, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v25    # "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1468
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1466
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_20

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$18;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$18;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1469
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1470
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 1472
    nop

    .line 1473
    nop

    .line 1470
    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v10, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1475
    nop

    .line 1469
    invoke-direct {v7, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1476
    move-object v6, v7

    .line 1466
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_20
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 1465
    nop

    .line 1477
    nop

    .line 1455
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$19;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$19;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1478
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/Object;

    .line 1481
    nop

    .line 1482
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1483
    const/4 v7, 0x0

    .line 1484
    .local v7, "$i$f$enforceType":I
    nop

    .line 1487
    nop

    .line 1488
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_9

    .line 1490
    :cond_21
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1491
    const/4 v7, 0x0

    .line 1484
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1487
    nop

    .line 1492
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_9

    .line 1494
    :cond_22
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1495
    const/4 v7, 0x0

    .line 1484
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1487
    nop

    .line 1496
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_9

    .line 1498
    :cond_23
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1499
    const/4 v7, 0x0

    .line 1484
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1487
    nop

    .line 1500
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_9

    .line 1502
    :cond_24
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1503
    const/4 v7, 0x0

    .line 1484
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1487
    nop

    .line 1504
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_9

    .line 1506
    :cond_25
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1481
    :goto_9
    move-object v5, v7

    .line 1459
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_a
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1507
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    nop

    .line 1459
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 1452
    nop

    .line 344
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeDirectoryAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1509
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1510
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1511
    const-class v6, Ljava/lang/String;

    .line 1510
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1512
    const-class v7, Lexpo/modules/filesystem/MakeDirectoryOptions;

    .line 1510
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 1516
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 1517
    .restart local v9    # "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 1518
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;

    move-object/from16 v27, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v27, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v25, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v25, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1519
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1517
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_26

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$20;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$20;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1520
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1521
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;

    move/from16 v29, v6

    .end local v6    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1523
    nop

    .line 1524
    nop

    .line 1521
    move/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v23, "$i$f$toArgsArray":I
    invoke-direct {v15, v6, v8, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 1526
    nop

    .line 1520
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1527
    move-object v6, v7

    goto :goto_b

    .line 1517
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_26
    move/from16 v23, v8

    .end local v8    # "$i$f$toArgsArray":I
    .restart local v23    # "$i$f$toArgsArray":I
    :goto_b
    const/4 v4, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v10, v4

    .line 1516
    nop

    .line 1528
    const/4 v4, 0x0

    .line 1529
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1518
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Lexpo/modules/filesystem/MakeDirectoryOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v29, v4

    const/4 v15, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1519
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1529
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_27

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$21;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$21;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1530
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1531
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Lexpo/modules/filesystem/MakeDirectoryOptions;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1533
    nop

    .line 1534
    nop

    .line 1531
    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1536
    nop

    .line 1530
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1537
    nop

    .line 1529
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_27
    const/4 v4, 0x1

    .end local v29    # "$i$f$toAnyType":I
    aput-object v8, v10, v4

    .line 1516
    nop

    .line 1538
    nop

    .line 1509
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v25    # "p1$iv$iv":Ljava/lang/Class;
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$22;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$22;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v10

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1539
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Lkotlin/Unit;

    .line 1542
    nop

    .line 1543
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1544
    const/4 v7, 0x0

    .line 1545
    .local v7, "$i$f$enforceType":I
    nop

    .line 1548
    nop

    .line 1549
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1551
    :cond_28
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1552
    const/4 v7, 0x0

    .line 1545
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1548
    nop

    .line 1553
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1555
    :cond_29
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1556
    const/4 v7, 0x0

    .line 1545
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1548
    nop

    .line 1557
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1559
    :cond_2a
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1560
    const/4 v7, 0x0

    .line 1545
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1548
    nop

    .line 1561
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1563
    :cond_2b
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1564
    const/4 v7, 0x0

    .line 1545
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1548
    nop

    .line 1565
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_c

    .line 1567
    :cond_2c
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1542
    :goto_c
    nop

    .line 1568
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1569
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    nop

    .line 1568
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 1509
    nop

    .line 362
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readDirectoryAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1571
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1572
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1578
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$23;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$23;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1572
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v23, v4

    goto/16 :goto_e

    .line 1574
    :cond_2d
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1579
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1580
    const-class v6, Ljava/lang/String;

    .line 1579
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1584
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 1585
    .local v8, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 1586
    .local v15, "$i$f$cachedAnyType":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v23, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Ljava/lang/String;

    move-object/from16 v25, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v25, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v24, v7

    const/16 v21, 0x1

    .end local v7    # "$i$f$toArgsArray":I
    .local v24, "$i$f$toArgsArray":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1587
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1585
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_2e

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$24;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$24;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1588
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1589
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 1591
    nop

    .line 1592
    nop

    .line 1589
    move/from16 v27, v6

    const/4 v6, 0x1

    .end local v6    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    invoke-direct {v10, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1594
    nop

    .line 1588
    invoke-direct {v7, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1595
    move-object v6, v7

    .line 1585
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_2e
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 1584
    nop

    .line 1596
    nop

    .line 1574
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$25;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$25;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1597
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/util/List;

    .line 1600
    nop

    .line 1601
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 1602
    const/4 v7, 0x0

    .line 1603
    .local v7, "$i$f$enforceType":I
    nop

    .line 1606
    nop

    .line 1607
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_d

    .line 1609
    :cond_2f
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1610
    const/4 v7, 0x0

    .line 1603
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1606
    nop

    .line 1611
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_d

    .line 1613
    :cond_30
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1614
    const/4 v7, 0x0

    .line 1603
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1606
    nop

    .line 1615
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_d

    .line 1617
    :cond_31
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 1618
    const/4 v7, 0x0

    .line 1603
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1606
    nop

    .line 1619
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_d

    .line 1621
    :cond_32
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1622
    const/4 v7, 0x0

    .line 1603
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1606
    nop

    .line 1623
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_d

    .line 1625
    :cond_33
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1600
    :goto_d
    move-object v5, v7

    .line 1578
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_e
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1626
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    nop

    .line 1578
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 1571
    nop

    .line 379
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getTotalDiskCapacityAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1628
    .local v4, "$i$f$AsyncFunction":I
    const/4 v5, 0x0

    .line 1629
    .local v5, "$i$f$emptyArray":I
    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1628
    .end local v5    # "$i$f$emptyArray":I
    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$26;

    invoke-direct {v5}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$26;-><init>()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .local v5, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v6, v7

    .local v6, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v7, 0x0

    .line 1630
    .local v7, "$i$f$createAsyncFunctionComponent":I
    const-class v8, Ljava/lang/Double;

    .line 1633
    nop

    .line 1634
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 1635
    const/4 v8, 0x0

    .line 1636
    .local v8, "$i$f$enforceType":I
    nop

    .line 1639
    nop

    .line 1640
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_f

    .line 1642
    :cond_34
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 1643
    const/4 v8, 0x0

    .line 1636
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1639
    nop

    .line 1644
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_f

    .line 1646
    :cond_35
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 1647
    const/4 v8, 0x0

    .line 1636
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1639
    nop

    .line 1648
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_f

    .line 1650
    :cond_36
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 1651
    const/4 v8, 0x0

    .line 1636
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1639
    nop

    .line 1652
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_f

    .line 1654
    :cond_37
    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 1655
    const/4 v8, 0x0

    .line 1636
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1639
    nop

    .line 1656
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_f

    .line 1658
    :cond_38
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1633
    :goto_f
    nop

    .line 1628
    .end local v5    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v7    # "$i$f$createAsyncFunctionComponent":I
    move-object v5, v8

    .local v5, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v6, 0x0

    .line 1659
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    nop

    .line 1628
    .end local v5    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 388
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getFreeDiskStorageAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1661
    .restart local v4    # "$i$f$AsyncFunction":I
    const/4 v5, 0x0

    .line 1662
    .local v5, "$i$f$emptyArray":I
    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1661
    .end local v5    # "$i$f$emptyArray":I
    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$27;

    invoke-direct {v5}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$27;-><init>()V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .local v5, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v6, v7

    .local v6, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v7, 0x0

    .line 1663
    .restart local v7    # "$i$f$createAsyncFunctionComponent":I
    const-class v8, Ljava/lang/Double;

    .line 1666
    nop

    .line 1667
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 1668
    const/4 v8, 0x0

    .line 1669
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1672
    nop

    .line 1673
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1675
    :cond_39
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 1676
    const/4 v8, 0x0

    .line 1669
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1672
    nop

    .line 1677
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1679
    :cond_3a
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 1680
    const/4 v8, 0x0

    .line 1669
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1672
    nop

    .line 1681
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1683
    :cond_3b
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 1684
    const/4 v8, 0x0

    .line 1669
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1672
    nop

    .line 1685
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1687
    :cond_3c
    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 1688
    const/4 v8, 0x0

    .line 1669
    .restart local v8    # "$i$f$enforceType":I
    nop

    .line 1672
    nop

    .line 1689
    .end local v8    # "$i$f$enforceType":I
    new-instance v8, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_10

    .line 1691
    :cond_3d
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v3, v6, v5}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1666
    :goto_10
    nop

    .line 1661
    .end local v5    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v7    # "$i$f$createAsyncFunctionComponent":I
    move-object v5, v8

    .local v5, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v6, 0x0

    .line 1692
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    nop

    .line 1661
    .end local v5    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$4$iv":I
    nop

    .line 397
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getContentUriAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1694
    .restart local v4    # "$i$f$AsyncFunction":I
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1695
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1701
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$28;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$28;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1695
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v23, v4

    goto/16 :goto_12

    .line 1697
    :cond_3e
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1702
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1703
    const-class v6, Ljava/lang/String;

    .line 1702
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1707
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 1708
    .local v8, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 1709
    .restart local v15    # "$i$f$cachedAnyType":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .restart local v23    # "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Ljava/lang/String;

    move-object/from16 v25, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v25    # "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1710
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1708
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_3f

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$29;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$29;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1711
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1712
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 1714
    nop

    .line 1715
    nop

    .line 1712
    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v10, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1717
    nop

    .line 1711
    invoke-direct {v7, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1718
    move-object v6, v7

    .line 1708
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_3f
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 1707
    nop

    .line 1719
    nop

    .line 1697
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$30;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$30;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1720
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/String;

    .line 1723
    nop

    .line 1724
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 1725
    const/4 v7, 0x0

    .line 1726
    .local v7, "$i$f$enforceType":I
    nop

    .line 1729
    nop

    .line 1730
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1732
    :cond_40
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 1733
    const/4 v7, 0x0

    .line 1726
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1729
    nop

    .line 1734
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1736
    :cond_41
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 1737
    const/4 v7, 0x0

    .line 1726
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1729
    nop

    .line 1738
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1740
    :cond_42
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    .line 1741
    const/4 v7, 0x0

    .line 1726
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1729
    nop

    .line 1742
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1744
    :cond_43
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 1745
    const/4 v7, 0x0

    .line 1726
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1729
    nop

    .line 1746
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_11

    .line 1748
    :cond_44
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1723
    :goto_11
    move-object v5, v7

    .line 1701
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_12
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1749
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    nop

    .line 1701
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 1694
    nop

    .line 411
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readSAFDirectoryAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1751
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1752
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1758
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$31;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$31;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1752
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v23, v4

    goto/16 :goto_14

    .line 1754
    :cond_45
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1759
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1760
    const-class v6, Ljava/lang/String;

    .line 1759
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 1764
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 1765
    .restart local v8    # "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v15, 0x0

    .line 1766
    .restart local v15    # "$i$f$cachedAnyType":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .restart local v23    # "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v24, Ljava/lang/String;

    move-object/from16 v25, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v25    # "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1767
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1765
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v15    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_46

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$32;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$32;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1768
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1769
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 1771
    nop

    .line 1772
    nop

    .line 1769
    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v10, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1774
    nop

    .line 1768
    invoke-direct {v7, v10, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1775
    move-object v6, v7

    .line 1765
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_46
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 1764
    nop

    .line 1776
    nop

    .line 1754
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v25    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$33;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$33;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1777
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/util/List;

    .line 1780
    nop

    .line 1781
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1782
    const/4 v7, 0x0

    .line 1783
    .local v7, "$i$f$enforceType":I
    nop

    .line 1786
    nop

    .line 1787
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 1789
    :cond_47
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 1790
    const/4 v7, 0x0

    .line 1783
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1786
    nop

    .line 1791
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 1793
    :cond_48
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 1794
    const/4 v7, 0x0

    .line 1783
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1786
    nop

    .line 1795
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 1797
    :cond_49
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1798
    const/4 v7, 0x0

    .line 1783
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1786
    nop

    .line 1799
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 1801
    :cond_4a
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1802
    const/4 v7, 0x0

    .line 1783
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1786
    nop

    .line 1803
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_13

    .line 1805
    :cond_4b
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1780
    :goto_13
    move-object v5, v7

    .line 1758
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_14
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1806
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    nop

    .line 1758
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 1751
    nop

    .line 427
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeSAFDirectoryAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1808
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1809
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1810
    const-class v6, Ljava/lang/String;

    .line 1809
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1811
    const-class v7, Ljava/lang/String;

    .line 1809
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 1815
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x2

    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 1816
    .restart local v9    # "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v15, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 1817
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;

    move-object/from16 v27, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v27, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v25, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v25, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1818
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1816
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_4c

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$34;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$34;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1819
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1820
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;

    move/from16 v29, v6

    .end local v6    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1822
    nop

    .line 1823
    nop

    .line 1820
    move/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toArgsArray":I
    .local v23, "$i$f$toArgsArray":I
    invoke-direct {v15, v6, v8, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 1825
    nop

    .line 1819
    invoke-direct {v7, v15, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1826
    move-object v6, v7

    goto :goto_15

    .line 1816
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v8    # "$i$f$toArgsArray":I
    :cond_4c
    move/from16 v23, v8

    .end local v8    # "$i$f$toArgsArray":I
    .restart local v23    # "$i$f$toArgsArray":I
    :goto_15
    const/4 v4, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v10, v4

    .line 1815
    nop

    .line 1827
    const/4 v4, 0x0

    .line 1828
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1817
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v29, v4

    const/4 v15, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v29    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1818
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1828
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_4d

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$35;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$35;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1829
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1830
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1832
    nop

    .line 1833
    nop

    .line 1830
    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1835
    nop

    .line 1829
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1836
    nop

    .line 1828
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_4d
    const/4 v4, 0x1

    .end local v29    # "$i$f$toAnyType":I
    aput-object v8, v10, v4

    .line 1815
    nop

    .line 1837
    nop

    .line 1808
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v23    # "$i$f$toArgsArray":I
    .end local v25    # "p1$iv$iv":Ljava/lang/Class;
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$36;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$36;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v10

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1838
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/String;

    .line 1841
    nop

    .line 1842
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 1843
    const/4 v7, 0x0

    .line 1844
    .local v7, "$i$f$enforceType":I
    nop

    .line 1847
    nop

    .line 1848
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_16

    .line 1850
    :cond_4e
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 1851
    const/4 v7, 0x0

    .line 1844
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1847
    nop

    .line 1852
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_16

    .line 1854
    :cond_4f
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 1855
    const/4 v7, 0x0

    .line 1844
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1847
    nop

    .line 1856
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_16

    .line 1858
    :cond_50
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 1859
    const/4 v7, 0x0

    .line 1844
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1847
    nop

    .line 1860
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_16

    .line 1862
    :cond_51
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1863
    const/4 v7, 0x0

    .line 1844
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1847
    nop

    .line 1864
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_16

    .line 1866
    :cond_52
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1841
    :goto_16
    nop

    .line 1867
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1868
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    nop

    .line 1867
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$9$iv":I
    nop

    .line 1808
    nop

    .line 446
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "createSAFFileAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1870
    .local v4, "$i$f$AsyncFunction":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 1871
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1872
    const-class v6, Ljava/lang/String;

    .line 1871
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1873
    const-class v7, Ljava/lang/String;

    .line 1871
    .local v7, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 1874
    const-class v8, Ljava/lang/String;

    .line 1871
    .local v8, "p2$iv$iv":Ljava/lang/Class;
    const/4 v9, 0x0

    .line 1878
    .local v9, "$i$f$toArgsArray":I
    const/4 v10, 0x3

    new-array v15, v10, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v10, 0x0

    .line 1879
    .local v10, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 1880
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v25, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v25, "$i$f$AsyncFunction":I
    new-instance v4, Lkotlin/Pair;

    const-class v27, Ljava/lang/String;

    move-object/from16 v29, v6

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v29, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v27 .. v27}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    move-object/from16 v27, v7

    const/16 v20, 0x0

    .end local v7    # "p1$iv$iv":Ljava/lang/Class;
    .local v27, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1881
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 1879
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_53

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$37;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$37;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1882
    .local v6, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1883
    move/from16 v23, v6

    .end local v6    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v6, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;

    move-object/from16 v33, v8

    .end local v8    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v33    # "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    .line 1885
    nop

    .line 1886
    nop

    .line 1883
    move/from16 v24, v9

    const/4 v9, 0x0

    .end local v9    # "$i$f$toArgsArray":I
    .local v24, "$i$f$toArgsArray":I
    invoke-direct {v6, v8, v9, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v6, Lkotlin/reflect/KType;

    .line 1888
    nop

    .line 1882
    invoke-direct {v7, v6, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1889
    move-object v6, v7

    goto :goto_17

    .line 1879
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$toArgsArray":I
    .end local v33    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v8    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v9    # "$i$f$toArgsArray":I
    :cond_53
    move-object/from16 v33, v8

    move/from16 v24, v9

    .end local v8    # "p2$iv$iv":Ljava/lang/Class;
    .end local v9    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    .restart local v33    # "p2$iv$iv":Ljava/lang/Class;
    :goto_17
    const/4 v4, 0x0

    .end local v10    # "$i$f$toAnyType":I
    aput-object v6, v15, v4

    .line 1878
    nop

    .line 1890
    const/4 v4, 0x0

    .line 1891
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1880
    .local v7, "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v23, v4

    const/4 v10, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1881
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1891
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_54

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$38;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$38;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1892
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1893
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1895
    nop

    .line 1896
    nop

    .line 1893
    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1898
    nop

    .line 1892
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1899
    nop

    .line 1891
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_54
    const/4 v4, 0x1

    .end local v23    # "$i$f$toAnyType":I
    aput-object v8, v15, v4

    .line 1878
    nop

    .line 1900
    const/4 v4, 0x0

    .line 1901
    .local v4, "$i$f$toAnyType":I
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v6, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v7, 0x0

    .line 1880
    .restart local v7    # "$i$f$cachedAnyType":I
    new-instance v8, Lkotlin/Pair;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    move/from16 v23, v4

    const/4 v10, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .line 1881
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1901
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v6    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v7    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_55

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$39;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$39;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 1902
    .local v6, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1903
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 1905
    nop

    .line 1906
    nop

    .line 1903
    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 1908
    nop

    .line 1902
    invoke-direct {v8, v7, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1909
    nop

    .line 1901
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v6    # "$i$f$toAnyType":I
    :cond_55
    const/4 v4, 0x2

    .end local v23    # "$i$f$toAnyType":I
    aput-object v8, v15, v4

    .line 1878
    nop

    .line 1910
    nop

    .line 1870
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v27    # "p1$iv$iv":Ljava/lang/Class;
    .end local v29    # "p0$iv$iv":Ljava/lang/Class;
    .end local v33    # "p2$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v15

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 1911
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Ljava/lang/String;

    .line 1914
    nop

    .line 1915
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1916
    const/4 v7, 0x0

    .line 1917
    .local v7, "$i$f$enforceType":I
    nop

    .line 1920
    nop

    .line 1921
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_18

    .line 1923
    :cond_56
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1924
    const/4 v7, 0x0

    .line 1917
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1920
    nop

    .line 1925
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_18

    .line 1927
    :cond_57
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1928
    const/4 v7, 0x0

    .line 1917
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1920
    nop

    .line 1929
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_18

    .line 1931
    :cond_58
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 1932
    const/4 v7, 0x0

    .line 1917
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1920
    nop

    .line 1933
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_18

    .line 1935
    :cond_59
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 1936
    const/4 v7, 0x0

    .line 1917
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 1920
    nop

    .line 1937
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_18

    .line 1939
    :cond_5a
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1914
    :goto_18
    nop

    .line 1940
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    move-object v4, v7

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 1941
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$13$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    nop

    .line 1940
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$13$iv":I
    nop

    .line 1870
    nop

    .line 463
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v25    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "requestDirectoryPermissionsAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1943
    .local v4, "$i$f$AsyncFunctionWithPromise":I
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1944
    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1945
    const-class v7, Ljava/lang/String;

    .line 1944
    .local v7, "p0$iv$iv":Ljava/lang/Class;
    const/4 v8, 0x0

    .line 1949
    .local v8, "$i$f$toArgsArray":I
    const/4 v9, 0x1

    new-array v10, v9, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 1950
    .local v9, "$i$f$toAnyType":I
    sget-object v15, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .restart local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v23, 0x0

    .line 1951
    .local v23, "$i$f$cachedAnyType":I
    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunctionWithPromise":I
    .local v24, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lkotlin/Pair;

    const-class v25, Ljava/lang/String;

    move-object/from16 v27, v7

    .end local v7    # "p0$iv$iv":Ljava/lang/Class;
    .local v27, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    move/from16 v25, v8

    const/16 v21, 0x1

    .end local v8    # "$i$f$toArgsArray":I
    .local v25, "$i$f$toArgsArray":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v15}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 1950
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v15    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v23    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_5b

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$1;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 1953
    .local v7, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1954
    new-instance v15, Lexpo/modules/kotlin/types/LazyKType;

    const-class v23, Ljava/lang/String;

    move/from16 v29, v7

    .end local v7    # "$i$f$toAnyType":I
    .local v29, "$i$f$toAnyType":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 1956
    nop

    .line 1957
    nop

    .line 1954
    move/from16 v23, v9

    const/4 v9, 0x1

    .end local v9    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    invoke-direct {v15, v7, v9, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v15, Lkotlin/reflect/KType;

    .line 1959
    nop

    .line 1953
    invoke-direct {v8, v15, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1960
    move-object v7, v8

    goto :goto_19

    .line 1950
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    .end local v29    # "$i$f$toAnyType":I
    .restart local v9    # "$i$f$toAnyType":I
    :cond_5b
    move/from16 v23, v9

    .end local v9    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    :goto_19
    const/4 v4, 0x0

    .end local v23    # "$i$f$toAnyType":I
    aput-object v7, v10, v4

    .line 1949
    nop

    .line 1961
    nop

    .line 1962
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v25    # "$i$f$toArgsArray":I
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 1943
    invoke-direct {v5, v3, v10, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 1962
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v6, 0x0

    .line 1963
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    nop

    .line 1962
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$11$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1943
    nop

    .line 478
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunctionWithPromise":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "uploadAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1965
    .local v4, "$i$f$AsyncFunctionWithPromise":I
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 1966
    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 1967
    const-class v7, Ljava/lang/String;

    .line 1966
    .local v7, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 1968
    const-class v8, Ljava/lang/String;

    .line 1966
    .local v8, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 1969
    const-class v9, Lexpo/modules/filesystem/FileSystemUploadOptions;

    .line 1966
    .local v9, "p2$iv$iv":Ljava/lang/Class;
    const/4 v10, 0x0

    .line 1973
    .local v10, "$i$f$toArgsArray":I
    move/from16 v23, v4

    const/4 v15, 0x3

    .end local v4    # "$i$f$AsyncFunctionWithPromise":I
    .local v23, "$i$f$AsyncFunctionWithPromise":I
    new-array v4, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v15, 0x0

    .line 1974
    .local v15, "$i$f$toAnyType":I
    sget-object v24, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v24, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v25, 0x0

    .line 1975
    .local v25, "$i$f$cachedAnyType":I
    move-object/from16 v27, v7

    .end local v7    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v27    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v7, Lkotlin/Pair;

    const-class v29, Ljava/lang/String;

    move-object/from16 v33, v8

    .end local v8    # "p1$iv$iv":Ljava/lang/Class;
    .local v33, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object/from16 v29, v9

    const/16 v20, 0x0

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .local v29, "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1976
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v24 .. v24}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 1974
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v24    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v25    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_5c

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$3;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 1977
    .local v8, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1978
    move/from16 v24, v8

    .end local v8    # "$i$f$toAnyType":I
    .local v24, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v25, Ljava/lang/String;

    move/from16 v34, v10

    .end local v10    # "$i$f$toArgsArray":I
    .local v34, "$i$f$toArgsArray":I
    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 1980
    nop

    .line 1981
    nop

    .line 1978
    move/from16 v25, v11

    const/4 v11, 0x0

    .end local v11    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .local v25, "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    invoke-direct {v8, v10, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 1983
    nop

    .line 1977
    invoke-direct {v9, v8, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1984
    move-object v8, v9

    goto :goto_1a

    .line 1974
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$i$f$toAnyType":I
    .end local v25    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .end local v34    # "$i$f$toArgsArray":I
    .restart local v10    # "$i$f$toArgsArray":I
    .restart local v11    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    :cond_5c
    move/from16 v34, v10

    move/from16 v25, v11

    .end local v10    # "$i$f$toArgsArray":I
    .end local v11    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v25    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    .restart local v34    # "$i$f$toArgsArray":I
    :goto_1a
    const/4 v7, 0x0

    .end local v15    # "$i$f$toAnyType":I
    aput-object v8, v4, v7

    .line 1973
    nop

    .line 1985
    const/4 v7, 0x0

    .line 1986
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 1975
    .local v9, "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v24, v7

    const/4 v15, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 1976
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1986
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_5d

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$4;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$4;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 1987
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1988
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 1990
    nop

    .line 1991
    nop

    .line 1988
    const/4 v15, 0x0

    invoke-direct {v9, v11, v15, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 1993
    nop

    .line 1987
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 1994
    nop

    .line 1986
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$toAnyType":I
    :cond_5d
    const/4 v7, 0x1

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 1973
    nop

    .line 1995
    const/4 v7, 0x0

    .line 1996
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 1975
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v24, v7

    const/4 v15, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 1976
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1996
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_5e

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$5;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 1997
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1998
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 2000
    nop

    .line 2001
    nop

    .line 1998
    const/4 v15, 0x0

    invoke-direct {v9, v11, v15, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2003
    nop

    .line 1997
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2004
    nop

    .line 1996
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v8    # "$i$f$toAnyType":I
    :cond_5e
    const/4 v7, 0x2

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 1973
    nop

    .line 2005
    nop

    .line 2006
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v27    # "p0$iv$iv":Ljava/lang/Class;
    .end local v29    # "p2$iv$iv":Ljava/lang/Class;
    .end local v33    # "p1$iv$iv":Ljava/lang/Class;
    .end local v34    # "$i$f$toArgsArray":I
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v6, v1, v13}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 1965
    invoke-direct {v5, v3, v4, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2006
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v6, 0x0

    .line 2007
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    nop

    .line 2006
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 1965
    nop

    .line 507
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunctionWithPromise":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "uploadTaskStartAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2009
    .local v4, "$i$f$AsyncFunctionWithPromise":I
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 2010
    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 2011
    const-class v7, Ljava/lang/String;

    .line 2010
    .local v7, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 2012
    const-class v8, Ljava/lang/String;

    .line 2010
    .local v8, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 2013
    const-class v9, Ljava/lang/String;

    .line 2010
    .local v9, "p2$iv$iv":Ljava/lang/Class;
    nop

    .line 2014
    const-class v10, Lexpo/modules/filesystem/FileSystemUploadOptions;

    .line 2010
    .local v10, "p3$iv$iv":Ljava/lang/Class;
    const/4 v11, 0x0

    .line 2018
    .local v11, "$i$f$toArgsArray":I
    const/4 v15, 0x4

    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunctionWithPromise":I
    .restart local v23    # "$i$f$AsyncFunctionWithPromise":I
    new-array v4, v15, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v24, 0x0

    .line 2019
    .restart local v24    # "$i$f$toAnyType":I
    sget-object v27, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v27, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v29, 0x0

    .line 2020
    .local v29, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v34, Ljava/lang/String;

    move-object/from16 v35, v7

    .end local v7    # "p0$iv$iv":Ljava/lang/Class;
    .local v35, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v34 .. v34}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    move-object/from16 v34, v8

    const/16 v20, 0x0

    .end local v8    # "p1$iv$iv":Ljava/lang/Class;
    .local v34, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v15, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v15

    .line 2021
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v27 .. v27}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 2019
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v29    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_5f

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$7;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$7;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2022
    .local v8, "$i$f$toAnyType":I
    new-instance v15, Lexpo/modules/kotlin/types/AnyType;

    .line 2023
    move/from16 v27, v8

    .end local v8    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v29, Ljava/lang/String;

    move-object/from16 v36, v9

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .local v36, "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 2025
    nop

    .line 2026
    nop

    .line 2023
    move-object/from16 v29, v10

    const/4 v10, 0x0

    .end local v10    # "p3$iv$iv":Ljava/lang/Class;
    .local v29, "p3$iv$iv":Ljava/lang/Class;
    invoke-direct {v8, v9, v10, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 2028
    nop

    .line 2022
    invoke-direct {v15, v8, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2029
    move-object v8, v15

    goto :goto_1b

    .line 2019
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    .end local v29    # "p3$iv$iv":Ljava/lang/Class;
    .end local v36    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v9    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v10    # "p3$iv$iv":Ljava/lang/Class;
    :cond_5f
    move-object/from16 v36, v9

    move-object/from16 v29, v10

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .end local v10    # "p3$iv$iv":Ljava/lang/Class;
    .restart local v29    # "p3$iv$iv":Ljava/lang/Class;
    .restart local v36    # "p2$iv$iv":Ljava/lang/Class;
    :goto_1b
    const/4 v7, 0x0

    .end local v24    # "$i$f$toAnyType":I
    aput-object v8, v4, v7

    .line 2018
    nop

    .line 2030
    const/4 v7, 0x0

    .line 2031
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2020
    .local v9, "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v15, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2021
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2031
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_60

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$8;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$8;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2032
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2033
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 2035
    nop

    .line 2036
    nop

    .line 2033
    move/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v9, v15, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2038
    nop

    .line 2032
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2039
    nop

    .line 2031
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_60
    const/4 v7, 0x1

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2018
    nop

    .line 2040
    const/4 v7, 0x0

    .line 2041
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2020
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v15, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2021
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2041
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_61

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$9;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$9;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2042
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2043
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 2045
    nop

    .line 2046
    nop

    .line 2043
    move/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v9, v15, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2048
    nop

    .line 2042
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2049
    nop

    .line 2041
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_61
    const/4 v7, 0x2

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2018
    nop

    .line 2050
    const/4 v7, 0x0

    .line 2051
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2020
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v15, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v15, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2021
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2051
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_62

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$10;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$10;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2052
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2053
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 2055
    nop

    .line 2056
    nop

    .line 2053
    move/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v9, v15, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2058
    nop

    .line 2052
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2059
    nop

    .line 2051
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_62
    const/4 v7, 0x3

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2018
    nop

    .line 2060
    nop

    .line 2061
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v11    # "$i$f$toArgsArray":I
    .end local v29    # "p3$iv$iv":Ljava/lang/Class;
    .end local v34    # "p1$iv$iv":Ljava/lang/Class;
    .end local v35    # "p0$iv$iv":Ljava/lang/Class;
    .end local v36    # "p2$iv$iv":Ljava/lang/Class;
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 2009
    invoke-direct {v5, v3, v4, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2061
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v6, 0x0

    .line 2062
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$23$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2063
    nop

    .line 2061
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$23$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 2009
    nop

    .line 559
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunctionWithPromise":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2064
    .local v4, "$i$f$AsyncFunctionWithPromise":I
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 2065
    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 2066
    const-class v7, Ljava/lang/String;

    .line 2065
    .local v7, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 2067
    const-class v8, Ljava/lang/String;

    .line 2065
    .local v8, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 2068
    const-class v9, Lexpo/modules/filesystem/DownloadOptions;

    .line 2065
    .local v9, "p2$iv$iv":Ljava/lang/Class;
    const/4 v10, 0x0

    .line 2072
    .local v10, "$i$f$toArgsArray":I
    const/4 v11, 0x3

    new-array v15, v11, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v11, 0x0

    .line 2073
    .local v11, "$i$f$toAnyType":I
    sget-object v23, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v23, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v24, 0x0

    .line 2074
    .local v24, "$i$f$cachedAnyType":I
    move/from16 v27, v4

    .end local v4    # "$i$f$AsyncFunctionWithPromise":I
    .local v27, "$i$f$AsyncFunctionWithPromise":I
    new-instance v4, Lkotlin/Pair;

    const-class v29, Ljava/lang/String;

    move-object/from16 v34, v7

    .end local v7    # "p0$iv$iv":Ljava/lang/Class;
    .local v34, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    move-object/from16 v29, v8

    const/16 v20, 0x0

    .end local v8    # "p1$iv$iv":Ljava/lang/Class;
    .local v29, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2075
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v23 .. v23}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lexpo/modules/kotlin/types/AnyType;

    .line 2073
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v23    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v24    # "$i$f$cachedAnyType":I
    if-nez v7, :cond_63

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$12;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$12;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 2076
    .local v7, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 2077
    move/from16 v23, v7

    .end local v7    # "$i$f$toAnyType":I
    .local v23, "$i$f$toAnyType":I
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v24, Ljava/lang/String;

    move-object/from16 v35, v9

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .local v35, "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 2079
    nop

    .line 2080
    nop

    .line 2077
    move/from16 v24, v10

    const/4 v10, 0x0

    .end local v10    # "$i$f$toArgsArray":I
    .local v24, "$i$f$toArgsArray":I
    invoke-direct {v7, v9, v10, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 2082
    nop

    .line 2076
    invoke-direct {v8, v7, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2083
    move-object v7, v8

    goto :goto_1c

    .line 2073
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v23    # "$i$f$toAnyType":I
    .end local v24    # "$i$f$toArgsArray":I
    .end local v35    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v9    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v10    # "$i$f$toArgsArray":I
    :cond_63
    move-object/from16 v35, v9

    move/from16 v24, v10

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .end local v10    # "$i$f$toArgsArray":I
    .restart local v24    # "$i$f$toArgsArray":I
    .restart local v35    # "p2$iv$iv":Ljava/lang/Class;
    :goto_1c
    const/4 v4, 0x0

    .end local v11    # "$i$f$toAnyType":I
    aput-object v7, v15, v4

    .line 2072
    nop

    .line 2084
    const/4 v4, 0x0

    .line 2085
    .local v4, "$i$f$toAnyType":I
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v7, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v8, 0x0

    .line 2074
    .local v8, "$i$f$cachedAnyType":I
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move/from16 v23, v4

    const/4 v11, 0x1

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v9, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    .line 2075
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    .line 2085
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v7    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v8    # "$i$f$cachedAnyType":I
    if-nez v9, :cond_64

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$13;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$13;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 2086
    .local v7, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 2087
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 2089
    nop

    .line 2090
    nop

    .line 2087
    const/4 v11, 0x1

    invoke-direct {v8, v10, v11, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 2092
    nop

    .line 2086
    invoke-direct {v9, v8, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2093
    nop

    .line 2085
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$toAnyType":I
    :cond_64
    const/4 v4, 0x1

    .end local v23    # "$i$f$toAnyType":I
    aput-object v9, v15, v4

    .line 2072
    nop

    .line 2094
    const/4 v4, 0x0

    .line 2095
    .local v4, "$i$f$toAnyType":I
    sget-object v7, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v7, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v8, 0x0

    .line 2074
    .restart local v8    # "$i$f$cachedAnyType":I
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    move/from16 v23, v4

    const/4 v11, 0x0

    .end local v4    # "$i$f$toAnyType":I
    .restart local v23    # "$i$f$toAnyType":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v9, v10, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v9

    .line 2075
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v7}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    .line 2095
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v7    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v8    # "$i$f$cachedAnyType":I
    if-nez v9, :cond_65

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$14;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$14;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v7, 0x0

    .line 2096
    .local v7, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 2097
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v10, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 2099
    nop

    .line 2100
    nop

    .line 2097
    const/4 v11, 0x0

    invoke-direct {v8, v10, v11, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 2102
    nop

    .line 2096
    invoke-direct {v9, v8, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2103
    nop

    .line 2095
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v7    # "$i$f$toAnyType":I
    :cond_65
    const/4 v4, 0x2

    .end local v23    # "$i$f$toAnyType":I
    aput-object v9, v15, v4

    .line 2072
    nop

    .line 2104
    nop

    .line 2105
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v24    # "$i$f$toArgsArray":I
    .end local v29    # "p1$iv$iv":Ljava/lang/Class;
    .end local v34    # "p0$iv$iv":Ljava/lang/Class;
    .end local v35    # "p2$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 2064
    invoke-direct {v5, v3, v15, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2105
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v6, 0x0

    .line 2106
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    nop

    .line 2105
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$19$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 2064
    nop

    .line 621
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v27    # "$i$f$AsyncFunctionWithPromise":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "networkTaskCancelAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2108
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 2109
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 2115
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$41;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$41;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 2109
    invoke-direct {v5, v3, v7, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v24, v4

    goto :goto_1d

    .line 2111
    :cond_66
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 2116
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 2117
    const-class v6, Ljava/lang/String;

    .line 2116
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 2121
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v8, 0x0

    .line 2122
    .local v8, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v10, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v11, 0x0

    .line 2123
    .local v11, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v23, Ljava/lang/String;

    move/from16 v24, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v24, "$i$f$AsyncFunction":I
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object/from16 v23, v6

    const/16 v20, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v23, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v15

    .line 2124
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 2122
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v11    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_67

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$42;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$42;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 2125
    .local v6, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2126
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 2128
    nop

    .line 2129
    nop

    .line 2126
    move/from16 v27, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    invoke-direct {v11, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2131
    nop

    .line 2125
    invoke-direct {v10, v11, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2132
    move-object v6, v10

    .line 2122
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_67
    const/4 v4, 0x0

    .end local v8    # "$i$f$toAnyType":I
    aput-object v6, v9, v4

    .line 2121
    nop

    .line 2133
    nop

    .line 2111
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v23    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$43;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$43;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v9

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 2134
    .local v6, "$i$f$createAsyncFunctionComponent":I
    nop

    .line 2135
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move-object v5, v7

    .line 2115
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_1d
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 2163
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    nop

    .line 2115
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 2108
    nop

    .line 626
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v24    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadResumableStartAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2165
    .local v4, "$i$f$AsyncFunctionWithPromise":I
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v6

    .line 2166
    .local v6, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 2167
    const-class v7, Ljava/lang/String;

    .line 2166
    .local v7, "p0$iv$iv":Ljava/lang/Class;
    nop

    .line 2168
    const-class v8, Ljava/lang/String;

    .line 2166
    .local v8, "p1$iv$iv":Ljava/lang/Class;
    nop

    .line 2169
    const-class v9, Ljava/lang/String;

    .line 2166
    .restart local v9    # "p2$iv$iv":Ljava/lang/Class;
    nop

    .line 2170
    const-class v10, Lexpo/modules/filesystem/DownloadOptions;

    .line 2166
    .local v10, "p3$iv$iv":Ljava/lang/Class;
    nop

    .line 2171
    const-class v11, Ljava/lang/String;

    .line 2166
    .local v11, "p4$iv$iv":Ljava/lang/Class;
    const/4 v15, 0x0

    .line 2175
    .local v15, "$i$f$toArgsArray":I
    move/from16 v23, v4

    .end local v4    # "$i$f$AsyncFunctionWithPromise":I
    .local v23, "$i$f$AsyncFunctionWithPromise":I
    const/4 v4, 0x5

    new-array v4, v4, [Lexpo/modules/kotlin/types/AnyType;

    const/16 v24, 0x0

    .line 2176
    .local v24, "$i$f$toAnyType":I
    sget-object v27, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v27, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/16 v29, 0x0

    .line 2177
    .local v29, "$i$f$cachedAnyType":I
    move-object/from16 v34, v7

    .end local v7    # "p0$iv$iv":Ljava/lang/Class;
    .restart local v34    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v7, Lkotlin/Pair;

    const-class v35, Ljava/lang/String;

    move-object/from16 v36, v8

    .end local v8    # "p1$iv$iv":Ljava/lang/Class;
    .local v36, "p1$iv$iv":Ljava/lang/Class;
    invoke-static/range {v35 .. v35}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    move-object/from16 v35, v9

    const/16 v20, 0x0

    .end local v9    # "p2$iv$iv":Ljava/lang/Class;
    .restart local v35    # "p2$iv$iv":Ljava/lang/Class;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2178
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual/range {v27 .. v27}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    .line 2176
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v27    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v29    # "$i$f$cachedAnyType":I
    if-nez v8, :cond_68

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$16;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$16;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2179
    .local v8, "$i$f$toAnyType":I
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 2180
    move/from16 v27, v8

    .end local v8    # "$i$f$toAnyType":I
    .local v27, "$i$f$toAnyType":I
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    const-class v29, Ljava/lang/String;

    move-object/from16 v37, v10

    .end local v10    # "p3$iv$iv":Ljava/lang/Class;
    .local v37, "p3$iv$iv":Ljava/lang/Class;
    invoke-static/range {v29 .. v29}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 2182
    nop

    .line 2183
    nop

    .line 2180
    move-object/from16 v29, v11

    const/4 v11, 0x0

    .end local v11    # "p4$iv$iv":Ljava/lang/Class;
    .local v29, "p4$iv$iv":Ljava/lang/Class;
    invoke-direct {v8, v10, v11, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 2185
    nop

    .line 2179
    invoke-direct {v9, v8, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2186
    move-object v8, v9

    goto :goto_1e

    .line 2176
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    .end local v29    # "p4$iv$iv":Ljava/lang/Class;
    .end local v37    # "p3$iv$iv":Ljava/lang/Class;
    .restart local v10    # "p3$iv$iv":Ljava/lang/Class;
    .restart local v11    # "p4$iv$iv":Ljava/lang/Class;
    :cond_68
    move-object/from16 v37, v10

    move-object/from16 v29, v11

    .end local v10    # "p3$iv$iv":Ljava/lang/Class;
    .end local v11    # "p4$iv$iv":Ljava/lang/Class;
    .restart local v29    # "p4$iv$iv":Ljava/lang/Class;
    .restart local v37    # "p3$iv$iv":Ljava/lang/Class;
    :goto_1e
    const/4 v7, 0x0

    .end local v24    # "$i$f$toAnyType":I
    aput-object v8, v4, v7

    .line 2175
    nop

    .line 2187
    const/4 v7, 0x0

    .line 2188
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2177
    .local v9, "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2178
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2188
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_69

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$17;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$17;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2189
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2190
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 2192
    nop

    .line 2193
    nop

    .line 2190
    move/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v9, v11, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2195
    nop

    .line 2189
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2196
    nop

    .line 2188
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_69
    const/4 v7, 0x1

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2175
    nop

    .line 2197
    const/4 v7, 0x0

    .line 2198
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2177
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v24, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2178
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2198
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_6a

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$18;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$18;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2199
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2200
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 2202
    nop

    .line 2203
    nop

    .line 2200
    move/from16 v27, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v27    # "$i$f$toAnyType":I
    invoke-direct {v9, v11, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2205
    nop

    .line 2199
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2206
    nop

    .line 2198
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v27    # "$i$f$toAnyType":I
    :cond_6a
    const/4 v7, 0x2

    .end local v24    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2175
    nop

    .line 2207
    const/4 v7, 0x0

    .line 2208
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2177
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v22, v7

    const/16 v20, 0x0

    .end local v7    # "$i$f$toAnyType":I
    .local v22, "$i$f$toAnyType":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2178
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2208
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_6b

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$19;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$19;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2209
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2210
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 2212
    nop

    .line 2213
    nop

    .line 2210
    move/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "$i$f$toAnyType":I
    .restart local v24    # "$i$f$toAnyType":I
    invoke-direct {v9, v11, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2215
    nop

    .line 2209
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2216
    nop

    .line 2208
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v24    # "$i$f$toAnyType":I
    :cond_6b
    const/4 v7, 0x3

    .end local v22    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2175
    nop

    .line 2217
    const/4 v7, 0x0

    .line 2218
    .local v7, "$i$f$toAnyType":I
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v8, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v9, 0x0

    .line 2177
    .restart local v9    # "$i$f$cachedAnyType":I
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    move/from16 v22, v7

    const/16 v17, 0x1

    .end local v7    # "$i$f$toAnyType":I
    .restart local v22    # "$i$f$toAnyType":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v10

    .line 2178
    .local v7, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2218
    .end local v7    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v8    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v9    # "$i$f$cachedAnyType":I
    if-nez v10, :cond_6c

    sget-object v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$20;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$20;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    .local v7, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v8, 0x0

    .line 2219
    .local v8, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2220
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    .line 2222
    nop

    .line 2223
    nop

    .line 2220
    move/from16 v17, v8

    const/4 v8, 0x1

    .end local v8    # "$i$f$toAnyType":I
    .local v17, "$i$f$toAnyType":I
    invoke-direct {v9, v11, v8, v7}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 2225
    nop

    .line 2219
    invoke-direct {v10, v9, v6}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2226
    nop

    .line 2218
    .end local v7    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v17    # "$i$f$toAnyType":I
    :cond_6c
    const/4 v7, 0x4

    .end local v22    # "$i$f$toAnyType":I
    aput-object v10, v4, v7

    .line 2175
    nop

    .line 2227
    nop

    .line 2228
    .end local v6    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v15    # "$i$f$toArgsArray":I
    .end local v29    # "p4$iv$iv":Ljava/lang/Class;
    .end local v34    # "p0$iv$iv":Ljava/lang/Class;
    .end local v35    # "p2$iv$iv":Ljava/lang/Class;
    .end local v36    # "p1$iv$iv":Ljava/lang/Class;
    .end local v37    # "p3$iv$iv":Ljava/lang/Class;
    new-instance v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;

    invoke-direct {v6, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 2165
    invoke-direct {v5, v3, v4, v6}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2228
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    const/4 v6, 0x0

    .line 2229
    .local v6, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$27$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    nop

    .line 2228
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;
    .end local v6    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$27$iv":I
    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 2165
    nop

    .line 691
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v23    # "$i$f$AsyncFunctionWithPromise":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadResumablePauseAsync"

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .restart local v3    # "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2231
    .local v4, "$i$f$AsyncFunction":I
    const-class v5, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 2232
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    const/4 v6, 0x0

    new-array v6, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 2238
    new-instance v7, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;

    invoke-direct {v7, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 2232
    invoke-direct {v5, v3, v6, v7}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    move/from16 v21, v4

    goto/16 :goto_20

    .line 2234
    :cond_6d
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getConverters()Lexpo/modules/kotlin/types/TypeConverterProvider;

    move-result-object v5

    .line 2239
    .local v5, "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    nop

    .line 2240
    const-class v6, Ljava/lang/String;

    .line 2239
    .local v6, "p0$iv$iv":Ljava/lang/Class;
    const/4 v7, 0x0

    .line 2244
    .local v7, "$i$f$toArgsArray":I
    const/4 v8, 0x1

    new-array v8, v8, [Lexpo/modules/kotlin/types/AnyType;

    const/4 v9, 0x0

    .line 2245
    .local v9, "$i$f$toAnyType":I
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .local v10, "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    const/4 v11, 0x0

    .line 2246
    .local v11, "$i$f$cachedAnyType":I
    new-instance v15, Lkotlin/Pair;

    const-class v17, Ljava/lang/String;

    move/from16 v21, v4

    .end local v4    # "$i$f$AsyncFunction":I
    .local v21, "$i$f$AsyncFunction":I
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object/from16 v22, v6

    const/16 v17, 0x0

    .end local v6    # "p0$iv$iv":Ljava/lang/Class;
    .local v22, "p0$iv$iv":Ljava/lang/Class;
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v15, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v15

    .line 2247
    .local v4, "key$iv$iv$iv$iv":Lkotlin/Pair;
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    .line 2245
    .end local v4    # "key$iv$iv$iv$iv":Lkotlin/Pair;
    .end local v10    # "this_$iv$iv$iv$iv":Lexpo/modules/kotlin/types/AnyTypeProvider;
    .end local v11    # "$i$f$cachedAnyType":I
    if-nez v6, :cond_6e

    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$45;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$45;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .local v4, "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    const/4 v6, 0x0

    .line 2248
    .local v6, "$i$f$toAnyType":I
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2249
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    .line 2251
    nop

    .line 2252
    nop

    .line 2249
    move/from16 v17, v6

    const/4 v6, 0x0

    .end local v6    # "$i$f$toAnyType":I
    .restart local v17    # "$i$f$toAnyType":I
    invoke-direct {v11, v15, v6, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2254
    nop

    .line 2248
    invoke-direct {v10, v11, v5}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    .line 2255
    move-object v6, v10

    .line 2245
    .end local v4    # "$this$toAnyType$iv$iv$iv$iv":Lkotlin/jvm/functions/Function0;
    .end local v17    # "$i$f$toAnyType":I
    :cond_6e
    const/4 v4, 0x0

    .end local v9    # "$i$f$toAnyType":I
    aput-object v6, v8, v4

    .line 2244
    nop

    .line 2256
    nop

    .line 2234
    .end local v5    # "converterProvider$iv$iv":Lexpo/modules/kotlin/types/TypeConverterProvider;
    .end local v7    # "$i$f$toArgsArray":I
    .end local v22    # "p0$iv$iv":Ljava/lang/Class;
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;

    invoke-direct {v4, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .local v4, "body$iv$iv":Lkotlin/jvm/functions/Function1;
    move-object v5, v8

    .local v5, "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    const/4 v6, 0x0

    .line 2257
    .local v6, "$i$f$createAsyncFunctionComponent":I
    const-class v7, Landroid/os/Bundle;

    .line 2260
    nop

    .line 2261
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 2262
    const/4 v7, 0x0

    .line 2263
    .local v7, "$i$f$enforceType":I
    nop

    .line 2266
    nop

    .line 2267
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1f

    .line 2269
    :cond_6f
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 2270
    const/4 v7, 0x0

    .line 2263
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 2266
    nop

    .line 2271
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1f

    .line 2273
    :cond_70
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 2274
    const/4 v7, 0x0

    .line 2263
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 2266
    nop

    .line 2275
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1f

    .line 2277
    :cond_71
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 2278
    const/4 v7, 0x0

    .line 2263
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 2266
    nop

    .line 2279
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1f

    .line 2281
    :cond_72
    const-class v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 2282
    const/4 v7, 0x0

    .line 2263
    .restart local v7    # "$i$f$enforceType":I
    nop

    .line 2266
    nop

    .line 2283
    .end local v7    # "$i$f$enforceType":I
    new-instance v7, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_1f

    .line 2285
    :cond_73
    new-instance v7, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v7, v3, v5, v4}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 2260
    :goto_1f
    move-object v5, v7

    .line 2238
    .end local v4    # "body$iv$iv":Lkotlin/jvm/functions/Function1;
    .end local v5    # "desiredArgsTypes$iv$iv":[Lexpo/modules/kotlin/types/AnyType;
    .end local v6    # "$i$f$createAsyncFunctionComponent":I
    :goto_20
    move-object v4, v5

    .local v4, "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    const/4 v5, 0x0

    .line 2286
    .local v5, "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    nop

    .line 2238
    .end local v4    # "it$iv":Lexpo/modules/kotlin/functions/AsyncFunctionComponent;
    .end local v5    # "$i$a$-also-ObjectDefinitionBuilder$AsyncFunction$7$iv":I
    nop

    .line 2231
    nop

    .line 708
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v21    # "$i$f$AsyncFunction":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .local v2, "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v3, 0x0

    .line 2288
    .local v3, "$i$f$OnActivityResult":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2289
    new-instance v6, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2288
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;

    invoke-direct {v8, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 2289
    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    nop

    .line 730
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v3    # "$i$f$OnActivityResult":I
    move-object v2, v13

    check-cast v2, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;

    .restart local v2    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    const/4 v3, 0x0

    .line 2291
    .local v3, "$i$f$OnDestroy":I
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v6, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v7, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnDestroy$1;

    invoke-direct {v8, v1}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnDestroy$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-direct {v6, v7, v8}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    nop

    .line 737
    .end local v2    # "this_$iv":Lexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder;
    .end local v3    # "$i$f$OnDestroy":I
    nop

    .line 1129
    .end local v13    # "$this$definition_u24lambda_u2448":Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;
    .end local v14    # "$i$a$-ModuleDefinition-FileSystemModule$definition$1":I
    invoke-virtual {v12}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1134
    .end local v25    # "$i$a$-trace-ModuleKt$ModuleDefinition$1$iv":I
    nop

    .line 2293
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 1134
    nop

    .line 1131
    .end local v28    # "$i$f$trace":I
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    nop

    .line 1130
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    nop

    .line 1129
    .end local v18    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    nop

    .line 737
    .end local v16    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v19    # "$i$f$ModuleDefinition":I
    return-object v2

    .line 2293
    .restart local v16    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_21

    .end local v28    # "$i$f$trace":I
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v9, "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v10, "$i$f$trace":I
    :catchall_2
    move-exception v0

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto/16 :goto_21

    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v8, "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_21

    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v7, "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_4
    move-exception v0

    move-object/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_21

    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v6, "$i$f$trace":I
    .restart local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_5
    move-exception v0

    move/from16 v26, v6

    move-object/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v6    # "$i$f$trace":I
    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_21

    .end local v18    # "blockName$iv$iv":Ljava/lang/String;
    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v5, "blockName$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_6
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v26, v6

    move-object/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v5    # "blockName$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v18    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_21

    .end local v18    # "blockName$iv$iv":Ljava/lang/String;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v4, "$i$f$ModuleDefinition":I
    .restart local v5    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_7
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v18, v5

    move/from16 v26, v6

    move-object/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v4    # "$i$f$ModuleDefinition":I
    .end local v5    # "blockName$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v18    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    goto :goto_21

    .end local v16    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v18    # "blockName$iv$iv":Ljava/lang/String;
    .end local v19    # "$i$f$ModuleDefinition":I
    .end local v26    # "$i$f$trace":I
    .end local v28    # "$i$f$trace":I
    .end local v30    # "$i$f$trace":I
    .end local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .local v3, "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v4    # "$i$f$ModuleDefinition":I
    .restart local v5    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move/from16 v26, v6

    move-object/from16 v31, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move/from16 v28, v10

    move-object v2, v0

    .end local v3    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .end local v4    # "$i$f$ModuleDefinition":I
    .end local v5    # "blockName$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v7    # "tag$iv$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .restart local v16    # "$this$ModuleDefinition$iv":Lexpo/modules/kotlin/modules/Module;
    .restart local v18    # "blockName$iv$iv":Ljava/lang/String;
    .restart local v19    # "$i$f$ModuleDefinition":I
    .restart local v26    # "$i$f$trace":I
    .restart local v28    # "$i$f$trace":I
    .restart local v30    # "$i$f$trace":I
    .restart local v31    # "tag$iv$iv$iv":Ljava/lang/String;
    .restart local v32    # "label$iv$iv$iv$iv":Ljava/lang/String;
    :goto_21
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v2
.end method
