.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 -Util.kt\nokio/-Util\n+ 3 Buffer.kt\nokio/internal/BufferKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,623:1\n89#2:624\n86#2:657\n86#2:659\n74#2:719\n74#2:745\n83#2:784\n77#2:795\n89#2:982\n74#2:997\n86#2:1098\n89#2:1563\n239#3,32:625\n274#3,10:660\n287#3,18:670\n409#3,2:688\n107#3:690\n411#3:691\n109#3,18:692\n308#3,9:710\n317#3,15:720\n335#3,10:735\n345#3,3:746\n343#3,25:749\n371#3,10:774\n381#3:785\n379#3,9:786\n388#3,7:796\n386#3,20:803\n646#3,57:823\n706#3,56:880\n764#3:936\n767#3:937\n768#3,6:939\n778#3,7:945\n788#3,6:952\n796#3,5:958\n828#3,6:963\n838#3:969\n839#3,11:971\n850#3,5:983\n859#3,9:988\n869#3,61:998\n600#3:1059\n603#3:1060\n604#3,5:1062\n611#3:1067\n614#3,7:1068\n623#3,17:1075\n415#3:1092\n418#3,5:1093\n423#3,10:1099\n434#3,7:1109\n439#3,2:1116\n934#3:1118\n935#3,87:1120\n1025#3,48:1207\n570#3:1255\n577#3,21:1256\n1076#3,7:1277\n1086#3,7:1284\n1096#3,4:1291\n1103#3,8:1295\n1114#3,10:1303\n1127#3,14:1313\n444#3,63:1327\n510#3,40:1390\n553#3:1430\n555#3,13:1432\n1144#3:1445\n1195#3:1446\n1196#3,39:1448\n1237#3,2:1487\n1239#3,4:1490\n1246#3,3:1494\n1250#3,4:1498\n107#3:1502\n1254#3,22:1503\n109#3,18:1525\n1280#3,2:1543\n1282#3,3:1546\n107#3:1549\n1285#3,13:1550\n1298#3,13:1564\n109#3,18:1577\n1315#3,2:1595\n1318#3:1598\n107#3:1599\n1319#3,50:1600\n109#3,18:1650\n1378#3,14:1668\n1395#3,32:1682\n1430#3,12:1714\n1445#3,18:1726\n1467#3:1744\n1468#3:1746\n1473#3,34:1747\n1#4:658\n1#4:938\n1#4:970\n1#4:1061\n1#4:1119\n1#4:1431\n1#4:1447\n1#4:1489\n1#4:1497\n1#4:1545\n1#4:1597\n1#4:1745\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:624\n197#1:657\n235#1:659\n261#1:719\n264#1:745\n267#1:784\n267#1:795\n335#1:982\n338#1:997\n374#1:1098\n481#1:1563\n181#1:625,32\n252#1:660,10\n255#1:670,18\n258#1:688,2\n258#1:690\n258#1:691\n258#1:692,18\n261#1:710,9\n261#1:720,15\n264#1:735,10\n264#1:746,3\n264#1:749,25\n267#1:774,10\n267#1:785\n267#1:786,9\n267#1:796,7\n267#1:803,20\n279#1:823,57\n282#1:880,56\n284#1:936\n287#1:937\n287#1:939,6\n289#1:945,7\n292#1:952,6\n295#1:958,5\n329#1:963,6\n335#1:969\n335#1:971,11\n335#1:983,5\n338#1:988,9\n338#1:998,61\n340#1:1059\n343#1:1060\n343#1:1062,5\n345#1:1067\n348#1:1068,7\n351#1:1075,17\n371#1:1092\n374#1:1093,5\n374#1:1099,10\n376#1:1109,7\n379#1:1116,2\n384#1:1118\n384#1:1120,87\n387#1:1207,48\n408#1:1255\n414#1:1256,21\n435#1:1277,7\n439#1:1284,7\n441#1:1291,4\n443#1:1295,8\n447#1:1303,10\n451#1:1313,14\n455#1:1327,63\n458#1:1390,40\n461#1:1430\n461#1:1432,13\n463#1:1445\n463#1:1446\n463#1:1448,39\n465#1:1487,2\n465#1:1490,4\n475#1:1494,3\n475#1:1498,4\n475#1:1502\n475#1:1503,22\n475#1:1525,18\n481#1:1543,2\n481#1:1546,3\n481#1:1549\n481#1:1550,13\n481#1:1564,13\n481#1:1577,18\n486#1:1595,2\n486#1:1598\n486#1:1599\n486#1:1600,50\n486#1:1650,18\n496#1:1668,14\n558#1:1682,32\n560#1:1714,12\n568#1:1726,18\n573#1:1744\n573#1:1746\n575#1:1747,34\n287#1:938\n335#1:970\n343#1:1061\n384#1:1119\n461#1:1431\n463#1:1447\n465#1:1489\n475#1:1497\n481#1:1545\n486#1:1597\n573#1:1745\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0000H\u0016J\u0006\u0010\u0011\u001a\u00020\u0012J\u0008\u0010\u0013\u001a\u00020\u0000H\u0016J\u0008\u0010\u0014\u001a\u00020\u0012H\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u0000J$\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0018\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000cJ \u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000cJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0008\u0010 \u001a\u00020\u0000H\u0016J\u0008\u0010!\u001a\u00020\u0000H\u0016J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0008\u0010&\u001a\u00020#H\u0016J\u0008\u0010\'\u001a\u00020\u0012H\u0016J\u0016\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000cH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u0015\u0010+\u001a\u00020)2\u0006\u0010,\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u001dH\u0002J\u000e\u00102\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u000e\u00104\u001a\u00020\u001d2\u0006\u00101\u001a\u00020\u001dJ\u0010\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)H\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000cH\u0016J \u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u00020\u000c2\u0006\u00108\u001a\u00020\u000cH\u0016J\u0010\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J\u0018\u00105\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0010\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001dH\u0016J\u0018\u0010:\u001a\u00020\u000c2\u0006\u0010;\u001a\u00020\u001d2\u0006\u00107\u001a\u00020\u000cH\u0016J\u0008\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020#H\u0016J\u0006\u0010?\u001a\u00020\u001dJ\u0008\u0010@\u001a\u00020\u0019H\u0016J\u0008\u0010A\u001a\u00020\u0001H\u0016J\u0018\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001dH\u0016J(\u0010B\u001a\u00020#2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020FH\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020GH\u0016J \u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010D\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u000c2\u0006\u0010E\u001a\u00020IH\u0016J\u0012\u0010J\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010M\u001a\u00020)H\u0016J\u0008\u0010N\u001a\u00020GH\u0016J\u0010\u0010N\u001a\u00020G2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010O\u001a\u00020\u001dH\u0016J\u0010\u0010O\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010P\u001a\u00020\u000cH\u0016J\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=J\u0016\u0010Q\u001a\u00020\u00002\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000cJ \u0010Q\u001a\u00020\u00122\u0006\u0010R\u001a\u00020=2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010S\u001a\u00020#H\u0002J\u0010\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020GH\u0016J\u0018\u0010T\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010U\u001a\u00020\u000cH\u0016J\u0008\u0010V\u001a\u00020/H\u0016J\u0008\u0010W\u001a\u00020/H\u0016J\u0008\u0010X\u001a\u00020\u000cH\u0016J\u0008\u0010Y\u001a\u00020\u000cH\u0016J\u0008\u0010Z\u001a\u00020[H\u0016J\u0008\u0010\\\u001a\u00020[H\u0016J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J\u0018\u0010]\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000c2\u0006\u0010^\u001a\u00020_H\u0016J\u0012\u0010`\u001a\u00020K2\u0008\u0008\u0002\u0010L\u001a\u00020KH\u0007J\u0008\u0010a\u001a\u00020\u001fH\u0016J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0008\u0010b\u001a\u00020/H\u0016J\n\u0010c\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010d\u001a\u00020\u001fH\u0016J\u0010\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020\u000cH\u0016J\u0010\u0010f\u001a\u00020#2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010g\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010h\u001a\u00020/2\u0006\u0010i\u001a\u00020jH\u0016J\u0006\u0010k\u001a\u00020\u001dJ\u0006\u0010l\u001a\u00020\u001dJ\u0006\u0010m\u001a\u00020\u001dJ\r\u0010\r\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008nJ\u0010\u0010o\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0006\u0010p\u001a\u00020\u001dJ\u000e\u0010p\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020/J\u0008\u0010q\u001a\u00020rH\u0016J\u0008\u0010s\u001a\u00020\u001fH\u0016J\u0015\u0010t\u001a\u00020\n2\u0006\u0010u\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008vJ\u0010\u0010w\u001a\u00020/2\u0006\u0010x\u001a\u00020FH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020GH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020G2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00122\u0006\u0010x\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001dH\u0016J \u0010w\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020/2\u0006\u0010\u001b\u001a\u00020/H\u0016J\u0018\u0010w\u001a\u00020\u00002\u0006\u0010x\u001a\u00020z2\u0006\u0010\u001b\u001a\u00020\u000cH\u0016J\u0010\u0010{\u001a\u00020\u000c2\u0006\u0010x\u001a\u00020zH\u0016J\u0010\u0010|\u001a\u00020\u00002\u0006\u00106\u001a\u00020/H\u0016J\u0010\u0010}\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0010\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020/H\u0016J\u0011\u0010\u0083\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0011\u0010\u0084\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\u000cH\u0016J\u0012\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020/H\u0016J\u001a\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_H\u0016J,\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/2\u0006\u0010^\u001a\u00020_H\u0016J\u001b\u0010\u008c\u0001\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000cH\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001fH\u0016J$\u0010\u008d\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u001f2\u0007\u0010\u008a\u0001\u001a\u00020/2\u0007\u0010\u008b\u0001\u001a\u00020/H\u0016J\u0012\u0010\u008e\u0001\u001a\u00020\u00002\u0007\u0010\u008f\u0001\u001a\u00020/H\u0016R\u0014\u0010\u0006\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\n8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0091\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "()V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "head",
        "Lokio/Segment;",
        "<set-?>",
        "",
        "size",
        "()J",
        "setSize$external__okio__android_common__okio_lib",
        "(J)V",
        "clear",
        "",
        "clone",
        "close",
        "completeSegmentByteCount",
        "copy",
        "copyTo",
        "out",
        "Ljava/io/OutputStream;",
        "offset",
        "byteCount",
        "digest",
        "Lokio/ByteString;",
        "algorithm",
        "",
        "emit",
        "emitCompleteSegments",
        "equals",
        "",
        "other",
        "",
        "exhausted",
        "flush",
        "get",
        "",
        "pos",
        "getByte",
        "index",
        "-deprecated_getByte",
        "hashCode",
        "",
        "hmac",
        "key",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "b",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "inputStream",
        "Ljava/io/InputStream;",
        "isOpen",
        "md5",
        "outputStream",
        "peek",
        "rangeEquals",
        "bytesOffset",
        "read",
        "sink",
        "Ljava/nio/ByteBuffer;",
        "",
        "readAll",
        "Lokio/Sink;",
        "readAndWriteUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readByte",
        "readByteArray",
        "readByteString",
        "readDecimalLong",
        "readFrom",
        "input",
        "forever",
        "readFully",
        "readHexadecimalUnsignedLong",
        "readInt",
        "readIntLe",
        "readLong",
        "readLongLe",
        "readShort",
        "",
        "readShortLe",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUnsafe",
        "readUtf8",
        "readUtf8CodePoint",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "request",
        "require",
        "select",
        "options",
        "Lokio/Options;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "skip",
        "snapshot",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$external__okio__android_common__okio_lib",
        "write",
        "source",
        "byteString",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "beginIndex",
        "endIndex",
        "writeTo",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
        "UnsafeCursor",
        "external__okio__android_common__okio-lib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public head:Lokio/Segment;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 149
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_0

    .line 147
    :cond_0
    move-wide v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 150
    nop

    .line 147
    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 150
    sub-long p4, p2, v2

    move-wide v4, p4

    goto :goto_1

    .line 147
    :cond_1
    move-wide v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0

    .line 183
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 51
    const-wide/16 p2, 0x0

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->copyTo(Lokio/Buffer;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6

    .line 177
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    .line 45
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_0

    .line 177
    :cond_0
    move-wide v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 519
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 520
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    goto :goto_1

    .local v1, "head":Lokio/Segment;
    :cond_0
    const/4 v2, 0x0

    .line 521
    .local v2, "$i$a$-let-Buffer$digest$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 522
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 523
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-eq v3, v1, :cond_1

    .line 524
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 525
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_0

    .line 527
    :cond_1
    nop

    .line 520
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$digest$1":I
    .end local v3    # "s":Lokio/Segment;
    nop

    .line 528
    :goto_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "messageDigest.digest()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    .line 541
    nop

    .line 542
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 543
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 544
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_0

    :goto_0
    goto :goto_2

    .local v1, "head":Lokio/Segment;
    :cond_0
    const/4 v2, 0x0

    .line 545
    .local v2, "$i$a$-let-Buffer$hmac$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 546
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 547
    .local v3, "s":Lokio/Segment;
    :goto_1
    if-eq v3, v1, :cond_1

    .line 548
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 549
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    .line 551
    :cond_1
    nop

    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$hmac$1":I
    .end local v3    # "s":Lokio/Segment;
    goto :goto_0

    .line 552
    :goto_2
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "mac.doFinal()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 553
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    .line 581
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 144
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 581
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    move-wide v0, p2

    .line 233
    .local v0, "byteCount":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    return-void

    .line 234
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 235
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .local v3, "b$iv":I
    const/4 v4, 0x0

    .line 659
    .local v4, "$i$f$minOf":I
    int-to-long v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 235
    .end local v3    # "b$iv":I
    .end local v4    # "$i$f$minOf":I
    long-to-int v3, v5

    .line 236
    .local v3, "maxToCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 237
    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 238
    iget v5, v2, Lokio/Segment;->pos:I

    iget v6, v2, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_2

    .line 240
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 241
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 243
    :cond_2
    if-eqz p4, :cond_3

    return-void

    .line 244
    :cond_3
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 246
    :cond_4
    iget v5, v2, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v2, Lokio/Segment;->limit:I

    .line 247
    iget-wide v5, p0, Lokio/Buffer;->size:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 248
    int-to-long v5, v4

    sub-long/2addr v0, v5

    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "maxToCopy":I
    .end local v4    # "bytesRead":I
    goto :goto_0
.end method

.method public static synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    .line 578
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 140
    new-instance p1, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p1}, Lokio/Buffer$UnsafeCursor;-><init>()V

    .line 578
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    iget-wide p2, p0, Lokio/Buffer;->size:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 1
    .param p1, "index"    # J
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .line 590
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .line 598
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 0

    .line 83
    return-object p0
.end method

.method public final clear()V
    .locals 4

    .line 371
    move-object v0, p0

    .local v0, "$this$commonClear$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1092
    .local v1, "$i$f$commonClear":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 371
    .end local v0    # "$this$commonClear$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonClear":I
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 1

    .line 571
    invoke-virtual {p0}, Lokio/Buffer;->copy()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 502
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 7

    .line 252
    move-object v0, p0

    .local v0, "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 660
    .local v1, "$i$f$commonCompleteSegmentByteCount":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 661
    .local v2, "result$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 664
    :cond_0
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 665
    .local v4, "tail$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lokio/Segment;->owner:Z

    if-eqz v5, :cond_1

    .line 666
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    .line 669
    :cond_1
    move-wide v4, v2

    .line 252
    .end local v0    # "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCompleteSegmentByteCount":I
    .end local v2    # "result$iv":J
    .end local v4    # "tail$iv":Lokio/Segment;
    :goto_0
    return-wide v4
.end method

.method public final copy()Lokio/Buffer;
    .locals 8

    .line 568
    move-object v0, p0

    .local v0, "$this$commonCopy$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1726
    .local v1, "$i$f$commonCopy":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1727
    .local v2, "result$iv":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_1

    .line 1729
    :cond_0
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1730
    .local v3, "head$iv":Lokio/Segment;
    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    .line 1732
    .local v4, "headCopy$iv":Lokio/Segment;
    iput-object v4, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 1733
    iput-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1734
    iget-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1736
    iget-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1737
    .local v5, "s$iv":Lokio/Segment;
    :goto_0
    if-eq v5, v3, :cond_1

    .line 1738
    iget-object v6, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1739
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1742
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1743
    nop

    .line 568
    .end local v0    # "$this$commonCopy$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCopy":I
    .end local v2    # "result$iv":Lokio/Buffer;
    .end local v3    # "head$iv":Lokio/Segment;
    .end local v4    # "headCopy$iv":Lokio/Segment;
    .end local v5    # "s$iv":Lokio/Segment;
    :goto_1
    return-object v2
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 14
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string v2, "out"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    move-wide/from16 v4, p2

    .line 153
    .local v4, "offset":J
    move-wide/from16 v8, p4

    .line 154
    .local v8, "byteCount":J
    iget-wide v2, v0, Lokio/Buffer;->size:J

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 155
    const-wide/16 v2, 0x0

    cmp-long v6, v8, v2

    if-nez v6, :cond_0

    return-object v0

    .line 158
    :cond_0
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 159
    .local v6, "s":Lokio/Segment;
    :goto_0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v7, v10

    int-to-long v10, v7

    cmp-long v7, v4, v10

    if-ltz v7, :cond_1

    .line 160
    iget v7, v6, Lokio/Segment;->limit:I

    iget v10, v6, Lokio/Segment;->pos:I

    sub-int/2addr v7, v10

    int-to-long v10, v7

    sub-long/2addr v4, v10

    .line 161
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 165
    :cond_1
    :goto_1
    cmp-long v7, v8, v2

    if-lez v7, :cond_2

    .line 166
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v6, Lokio/Segment;->pos:I

    int-to-long v10, v7

    add-long/2addr v10, v4

    long-to-int v7, v10

    .line 167
    .local v7, "pos":I
    iget v10, v6, Lokio/Segment;->limit:I

    sub-int/2addr v10, v7

    .local v10, "a$iv":I
    const/4 v11, 0x0

    .line 624
    .local v11, "$i$f$minOf":I
    int-to-long v12, v10

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 167
    .end local v10    # "a$iv":I
    .end local v11    # "$i$f$minOf":I
    long-to-int v10, v12

    .line 168
    .local v10, "toCopy":I
    iget-object v11, v6, Lokio/Segment;->data:[B

    invoke-virtual {p1, v11, v7, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    int-to-long v11, v10

    sub-long/2addr v8, v11

    .line 170
    const-wide/16 v4, 0x0

    .line 171
    iget-object v6, v6, Lokio/Segment;->next:Lokio/Segment;

    .end local v7    # "pos":I
    .end local v10    # "toCopy":I
    goto :goto_1

    .line 174
    :cond_2
    return-object v0
.end method

.method public final copyTo(Lokio/Buffer;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v6, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 13
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    move-object v0, p1

    const-string v1, "out"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v1, p0

    .local v1, "$this$commonCopyTo$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 625
    .local v2, "$i$f$commonCopyTo":I
    move-wide v5, p2

    .line 626
    .local v5, "offset$iv":J
    move-wide/from16 v9, p4

    .line 627
    .local v9, "byteCount$iv":J
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v3

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 628
    const-wide/16 v3, 0x0

    cmp-long v7, v9, v3

    if-nez v7, :cond_0

    goto :goto_3

    .line 630
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 633
    iget-object v7, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 634
    .local v7, "s$iv":Lokio/Segment;
    :goto_0
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    cmp-long v8, v5, v11

    if-ltz v8, :cond_1

    .line 635
    iget v8, v7, Lokio/Segment;->limit:I

    iget v11, v7, Lokio/Segment;->pos:I

    sub-int/2addr v8, v11

    int-to-long v11, v8

    sub-long/2addr v5, v11

    .line 636
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 640
    :cond_1
    :goto_1
    cmp-long v8, v9, v3

    if-lez v8, :cond_3

    .line 641
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v8

    .line 642
    .local v8, "copy$iv":Lokio/Segment;
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v5

    add-int/2addr v11, v12

    iput v11, v8, Lokio/Segment;->pos:I

    .line 643
    iget v11, v8, Lokio/Segment;->pos:I

    long-to-int v12, v9

    add-int/2addr v11, v12

    iget v12, v8, Lokio/Segment;->limit:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, v8, Lokio/Segment;->limit:I

    .line 644
    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    .line 645
    iput-object v8, v8, Lokio/Segment;->prev:Lokio/Segment;

    .line 646
    iget-object v11, v8, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    .line 647
    iget-object v11, v8, Lokio/Segment;->next:Lokio/Segment;

    iput-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 649
    :cond_2
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 651
    :goto_2
    iget v11, v8, Lokio/Segment;->limit:I

    iget v12, v8, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    sub-long/2addr v9, v11

    .line 652
    const-wide/16 v5, 0x0

    .line 653
    iget-object v7, v7, Lokio/Segment;->next:Lokio/Segment;

    .end local v8    # "copy$iv":Lokio/Segment;
    goto :goto_1

    .line 656
    :cond_3
    nop

    .line 181
    .end local v1    # "$this$commonCopyTo$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonCopyTo":I
    .end local v5    # "offset$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v9    # "byteCount$iv":J
    :goto_3
    return-object v1
.end method

.method public emit()Lokio/Buffer;
    .locals 0

    .line 107
    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .line 105
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 23
    .param p1, "other"    # Ljava/lang/Object;

    .line 558
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonEquals$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1682
    .local v2, "$i$f$commonEquals":I
    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    move v3, v4

    goto/16 :goto_2

    .line 1683
    :cond_0
    instance-of v5, v0, Lokio/Buffer;

    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1684
    :cond_1
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    move-object v7, v0

    check-cast v7, Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1685
    :cond_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    move v3, v4

    goto/16 :goto_2

    .line 1687
    :cond_3
    iget-object v5, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1688
    .local v5, "sa$iv":Lokio/Segment;
    move-object v6, v0

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1689
    .local v6, "sb$iv":Lokio/Segment;
    iget v9, v5, Lokio/Segment;->pos:I

    .line 1690
    .local v9, "posA$iv":I
    iget v10, v6, Lokio/Segment;->pos:I

    .line 1692
    .local v10, "posB$iv":I
    const-wide/16 v11, 0x0

    .local v11, "pos$iv":J
    const-wide/16 v13, 0x0

    .line 1694
    .local v13, "count$iv":J
    :goto_0
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v15

    cmp-long v15, v11, v15

    if-gez v15, :cond_8

    .line 1695
    iget v15, v5, Lokio/Segment;->limit:I

    sub-int/2addr v15, v9

    iget v3, v6, Lokio/Segment;->limit:I

    sub-int/2addr v3, v10

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v13, v3

    .line 1697
    move-wide/from16 v17, v7

    :goto_1
    cmp-long v3, v17, v13

    if-gez v3, :cond_5

    move-wide/from16 v19, v17

    .local v19, "i$iv":J
    const-wide/16 v21, 0x1

    add-long v17, v17, v21

    .line 1698
    iget-object v3, v5, Lokio/Segment;->data:[B

    add-int/lit8 v15, v9, 0x1

    .end local v9    # "posA$iv":I
    .local v15, "posA$iv":I
    aget-byte v3, v3, v9

    iget-object v9, v6, Lokio/Segment;->data:[B

    add-int/lit8 v21, v10, 0x1

    .end local v10    # "posB$iv":I
    .local v21, "posB$iv":I
    aget-byte v9, v9, v10

    if-eq v3, v9, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    move v9, v15

    move/from16 v10, v21

    goto :goto_1

    .line 1701
    .end local v15    # "posA$iv":I
    .end local v19    # "i$iv":J
    .end local v21    # "posB$iv":I
    .restart local v9    # "posA$iv":I
    .restart local v10    # "posB$iv":I
    :cond_5
    iget v3, v5, Lokio/Segment;->limit:I

    if-ne v9, v3, :cond_6

    .line 1702
    iget-object v3, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1703
    .end local v5    # "sa$iv":Lokio/Segment;
    .local v3, "sa$iv":Lokio/Segment;
    iget v5, v3, Lokio/Segment;->pos:I

    move v9, v5

    move-object v5, v3

    .line 1706
    .end local v3    # "sa$iv":Lokio/Segment;
    .restart local v5    # "sa$iv":Lokio/Segment;
    :cond_6
    iget v3, v6, Lokio/Segment;->limit:I

    if-ne v10, v3, :cond_7

    .line 1707
    iget-object v3, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1708
    .end local v6    # "sb$iv":Lokio/Segment;
    .local v3, "sb$iv":Lokio/Segment;
    iget v6, v3, Lokio/Segment;->pos:I

    move v10, v6

    move-object v6, v3

    .line 1710
    .end local v3    # "sb$iv":Lokio/Segment;
    .restart local v6    # "sb$iv":Lokio/Segment;
    :cond_7
    add-long/2addr v11, v13

    goto :goto_0

    .line 1713
    :cond_8
    move v3, v4

    .line 558
    .end local v1    # "$this$commonEquals$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonEquals":I
    .end local v5    # "sa$iv":Lokio/Segment;
    .end local v6    # "sb$iv":Lokio/Segment;
    .end local v9    # "posA$iv":I
    .end local v10    # "posB$iv":I
    .end local v11    # "pos$iv":J
    .end local v13    # "count$iv":J
    :goto_2
    return v3
.end method

.method public exhausted()Z
    .locals 4

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    .line 498
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    .line 85
    return-object p0
.end method

.method public final getByte(J)B
    .locals 14
    .param p1, "pos"    # J

    .line 258
    move-object v6, p0

    .local v6, "$this$commonGet$iv":Lokio/Buffer;
    const/4 v7, 0x0

    .line 688
    .local v7, "$i$f$commonGet":I
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 689
    move-object v0, v6

    .local v0, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 690
    .local v1, "$i$f$seek":I
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .local v3, "offset$iv":J
    check-cast v2, Lokio/Segment;

    .local v2, "s$iv":Lokio/Segment;
    const/4 v5, 0x0

    .line 691
    .local v5, "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v2, Lokio/Segment;->data:[B

    iget v9, v2, Lokio/Segment;->pos:I

    int-to-long v9, v9

    add-long/2addr v9, p1

    sub-long/2addr v9, v3

    long-to-int v9, v9

    aget-byte v8, v8, v9

    goto :goto_3

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "offset$iv":J
    .end local v5    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    :cond_0
    nop

    .line 692
    .local v2, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, p1

    cmp-long v3, v3, p1

    if-gez v3, :cond_2

    .line 694
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .line 695
    .local v3, "offset$iv$iv":J
    :goto_0
    cmp-long v5, v3, p1

    if-lez v5, :cond_1

    .line 696
    iget-object v5, v2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v5

    .line 697
    iget v5, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v8

    int-to-long v8, v5

    sub-long/2addr v3, v8

    goto :goto_0

    .line 699
    :cond_1
    move-object v5, v2

    .local v5, "s$iv":Lokio/Segment;
    move-wide v8, v3

    .local v8, "offset$iv":J
    const/4 v10, 0x0

    .line 691
    .local v10, "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v12, v12

    aget-byte v11, v11, v12

    :goto_1
    move v8, v11

    goto :goto_3

    .line 702
    .end local v3    # "offset$iv$iv":J
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    :cond_2
    const-wide/16 v3, 0x0

    .line 703
    .restart local v3    # "offset$iv$iv":J
    :goto_2
    nop

    .line 704
    iget v5, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v8

    int-to-long v8, v5

    add-long/2addr v8, v3

    .line 705
    .local v8, "nextOffset$iv$iv":J
    cmp-long v5, v8, p1

    if-lez v5, :cond_3

    .line 709
    .end local v8    # "nextOffset$iv$iv":J
    move-object v5, v2

    .restart local v5    # "s$iv":Lokio/Segment;
    move-wide v8, v3

    .local v8, "offset$iv":J
    const/4 v10, 0x0

    .line 691
    .restart local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v12, v12

    aget-byte v11, v11, v12

    goto :goto_1

    .line 258
    .end local v0    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v1    # "$i$f$seek":I
    .end local v2    # "s$iv$iv":Lokio/Segment;
    .end local v3    # "offset$iv$iv":J
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v6    # "$this$commonGet$iv":Lokio/Buffer;
    .end local v7    # "$i$f$commonGet":I
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek-BufferKt$commonGet$1$iv":I
    :goto_3
    return v8

    .line 706
    .restart local v0    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$seek":I
    .restart local v2    # "s$iv$iv":Lokio/Segment;
    .restart local v3    # "offset$iv$iv":J
    .restart local v6    # "$this$commonGet$iv":Lokio/Buffer;
    .restart local v7    # "$i$f$commonGet":I
    .local v8, "nextOffset$iv$iv":J
    :cond_3
    iget-object v5, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v5

    .line 707
    move-wide v3, v8

    .end local v8    # "nextOffset$iv$iv":J
    goto :goto_2
.end method

.method public hashCode()I
    .locals 8

    .line 560
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1714
    .local v1, "$i$f$commonHashCode":I
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 1715
    .local v2, "s$iv":Lokio/Segment;
    :cond_0
    const/4 v3, 0x1

    .line 1717
    .local v3, "result$iv":I
    :cond_1
    iget v4, v2, Lokio/Segment;->pos:I

    .line 1718
    .local v4, "pos$iv":I
    iget v5, v2, Lokio/Segment;->limit:I

    .line 1719
    .local v5, "limit$iv":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1720
    mul-int/lit8 v6, v3, 0x1f

    iget-object v7, v2, Lokio/Segment;->data:[B

    aget-byte v7, v7, v4

    add-int v3, v6, v7

    .line 1721
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1723
    :cond_2
    iget-object v6, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v6

    .line 1724
    iget-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v2, v6, :cond_1

    .line 1725
    .end local v4    # "pos$iv":I
    .end local v5    # "limit$iv":I
    move v2, v3

    .line 560
    .end local v0    # "$this$commonHashCode$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "result$iv":I
    :goto_1
    return v2
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B

    .line 467
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J

    .line 473
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(BJJ)J
    .locals 29
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J

    .line 475
    move/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1494
    .local v2, "$i$f$commonIndexOf":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1495
    const-wide/16 v5, 0x0

    .local v5, "toIndex$iv":J
    move-wide/from16 v5, p4

    .line 1496
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v3

    const/4 v8, 0x0

    if-gtz v7, :cond_0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v8, :cond_f

    .line 1498
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    :cond_1
    move-wide v7, v5

    .line 1499
    .end local v5    # "toIndex$iv":J
    .local v7, "toIndex$iv":J
    cmp-long v5, v3, v7

    if-nez v5, :cond_2

    const-wide/16 v9, -0x1

    goto/16 :goto_6

    .line 1501
    :cond_2
    move-wide v5, v3

    .local v5, "fromIndex$iv$iv":J
    move-object v11, v1

    .local v11, "$this$seek$iv$iv":Lokio/Buffer;
    move-wide v12, v5

    .end local v5    # "fromIndex$iv$iv":J
    .local v12, "fromIndex$iv$iv":J
    const/4 v14, 0x0

    .line 1502
    .local v14, "$i$f$seek":I
    iget-object v5, v11, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_3

    const/4 v5, 0x0

    const-wide/16 v15, -0x1

    .local v15, "offset$iv":J
    check-cast v5, Lokio/Segment;

    .local v5, "s$iv":Lokio/Segment;
    const/4 v6, 0x0

    .line 1503
    .local v6, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    const-wide/16 v9, -0x1

    goto/16 :goto_6

    .end local v5    # "s$iv":Lokio/Segment;
    .end local v6    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v15    # "offset$iv":J
    :cond_3
    nop

    .line 1525
    .local v5, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v15

    sub-long/2addr v15, v12

    cmp-long v6, v15, v12

    if-gez v6, :cond_9

    .line 1527
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v15

    .line 1528
    .local v15, "offset$iv$iv":J
    :goto_0
    cmp-long v6, v15, v12

    if-lez v6, :cond_4

    .line 1529
    iget-object v6, v5, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v6

    .line 1530
    iget v6, v5, Lokio/Segment;->limit:I

    iget v9, v5, Lokio/Segment;->pos:I

    sub-int/2addr v6, v9

    int-to-long v9, v6

    sub-long/2addr v15, v9

    goto :goto_0

    .line 1532
    :cond_4
    move-object v6, v5

    .local v6, "s$iv":Lokio/Segment;
    move-wide v9, v15

    .local v9, "offset$iv":J
    const/16 v17, 0x0

    .line 1503
    .local v17, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    if-nez v6, :cond_5

    const-wide/16 v9, -0x1

    goto/16 :goto_6

    :cond_5
    move-object/from16 v18, v6

    .line 1504
    .local v18, "s$iv":Lokio/Segment;
    move-wide/from16 v19, v9

    move-object/from16 v28, v18

    move/from16 v18, v2

    move-object/from16 v2, v28

    .line 1507
    .local v2, "s$iv":Lokio/Segment;
    .local v18, "$i$f$commonIndexOf":I
    .local v19, "offset$iv":J
    :goto_1
    cmp-long v21, v19, v7

    if-gez v21, :cond_8

    .line 1508
    move-object/from16 v21, v5

    .end local v5    # "s$iv$iv":Lokio/Segment;
    .local v21, "s$iv$iv":Lokio/Segment;
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 1509
    .local v5, "data$iv":[B
    move-object/from16 v22, v6

    .end local v6    # "s$iv":Lokio/Segment;
    .local v22, "s$iv":Lokio/Segment;
    iget v6, v2, Lokio/Segment;->limit:I

    move-wide/from16 v23, v9

    .end local v9    # "offset$iv":J
    .local v23, "offset$iv":J
    int-to-long v9, v6

    iget v6, v2, Lokio/Segment;->pos:I

    move/from16 v25, v14

    move-wide/from16 v26, v15

    .end local v14    # "$i$f$seek":I
    .end local v15    # "offset$iv$iv":J
    .local v25, "$i$f$seek":I
    .local v26, "offset$iv$iv":J
    int-to-long v14, v6

    add-long/2addr v14, v7

    sub-long v14, v14, v19

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    .line 1510
    .local v6, "limit$iv":I
    iget v9, v2, Lokio/Segment;->pos:I

    int-to-long v9, v9

    add-long/2addr v9, v3

    sub-long v9, v9, v19

    long-to-int v9, v9

    .line 1511
    .local v9, "pos$iv":I
    :goto_2
    if-ge v9, v6, :cond_7

    .line 1512
    aget-byte v10, v5, v9

    if-ne v10, v0, :cond_6

    .line 1513
    iget v10, v2, Lokio/Segment;->pos:I

    sub-int v10, v9, v10

    int-to-long v14, v10

    add-long v14, v14, v19

    move-wide v9, v14

    goto/16 :goto_6

    .line 1515
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1519
    :cond_7
    iget v10, v2, Lokio/Segment;->limit:I

    iget v14, v2, Lokio/Segment;->pos:I

    sub-int/2addr v10, v14

    int-to-long v14, v10

    add-long v19, v19, v14

    .line 1520
    move-wide/from16 v3, v19

    .line 1521
    iget-object v10, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v10

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-wide/from16 v9, v23

    move/from16 v14, v25

    move-wide/from16 v15, v26

    .end local v5    # "data$iv":[B
    .end local v6    # "limit$iv":I
    .end local v9    # "pos$iv":I
    goto :goto_1

    .line 1524
    .end local v21    # "s$iv$iv":Lokio/Segment;
    .end local v22    # "s$iv":Lokio/Segment;
    .end local v23    # "offset$iv":J
    .end local v25    # "$i$f$seek":I
    .end local v26    # "offset$iv$iv":J
    .local v5, "s$iv$iv":Lokio/Segment;
    .local v6, "s$iv":Lokio/Segment;
    .local v9, "offset$iv":J
    .restart local v14    # "$i$f$seek":I
    .restart local v15    # "offset$iv$iv":J
    :cond_8
    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-wide/from16 v23, v9

    move/from16 v25, v14

    move-wide/from16 v26, v15

    .end local v5    # "s$iv$iv":Lokio/Segment;
    .end local v6    # "s$iv":Lokio/Segment;
    .end local v9    # "offset$iv":J
    .end local v14    # "$i$f$seek":I
    .end local v15    # "offset$iv$iv":J
    .restart local v21    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv":Lokio/Segment;
    .restart local v23    # "offset$iv":J
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "offset$iv$iv":J
    const-wide/16 v9, -0x1

    goto/16 :goto_6

    .line 1535
    .end local v17    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v18    # "$i$f$commonIndexOf":I
    .end local v19    # "offset$iv":J
    .end local v21    # "s$iv$iv":Lokio/Segment;
    .end local v22    # "s$iv":Lokio/Segment;
    .end local v23    # "offset$iv":J
    .end local v25    # "$i$f$seek":I
    .end local v26    # "offset$iv$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .restart local v5    # "s$iv$iv":Lokio/Segment;
    .restart local v14    # "$i$f$seek":I
    :cond_9
    move/from16 v18, v2

    move/from16 v25, v14

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v14    # "$i$f$seek":I
    .restart local v18    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v9, 0x0

    .line 1536
    .local v9, "offset$iv$iv":J
    :goto_3
    nop

    .line 1537
    iget v2, v5, Lokio/Segment;->limit:I

    iget v6, v5, Lokio/Segment;->pos:I

    sub-int/2addr v2, v6

    int-to-long v14, v2

    add-long/2addr v14, v9

    .line 1538
    .local v14, "nextOffset$iv$iv":J
    cmp-long v2, v14, v12

    if-lez v2, :cond_e

    .line 1542
    .end local v14    # "nextOffset$iv$iv":J
    move-object v2, v5

    .local v2, "s$iv":Lokio/Segment;
    move-wide v14, v9

    .local v14, "offset$iv":J
    const/4 v6, 0x0

    .line 1503
    .local v6, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    if-nez v2, :cond_a

    const-wide/16 v9, -0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v16, v2

    .line 1504
    .local v16, "s$iv":Lokio/Segment;
    move-wide/from16 v19, v14

    move-object/from16 v28, v16

    move-object/from16 v2, v28

    .line 1507
    .restart local v19    # "offset$iv":J
    :goto_4
    cmp-long v17, v19, v7

    if-gez v17, :cond_d

    .line 1508
    move/from16 v17, v6

    .end local v6    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v17    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    iget-object v6, v2, Lokio/Segment;->data:[B

    .line 1509
    .local v6, "data$iv":[B
    move-wide/from16 v21, v9

    .end local v9    # "offset$iv$iv":J
    .local v21, "offset$iv$iv":J
    iget v9, v2, Lokio/Segment;->limit:I

    int-to-long v9, v9

    move-object/from16 v23, v11

    .end local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v23, "$this$seek$iv$iv":Lokio/Buffer;
    iget v11, v2, Lokio/Segment;->pos:I

    move-wide/from16 v26, v12

    .end local v12    # "fromIndex$iv$iv":J
    .local v26, "fromIndex$iv$iv":J
    int-to-long v11, v11

    add-long/2addr v11, v7

    sub-long v11, v11, v19

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 1510
    .local v9, "limit$iv":I
    iget v10, v2, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long/2addr v10, v3

    sub-long v10, v10, v19

    long-to-int v10, v10

    .line 1511
    .local v10, "pos$iv":I
    :goto_5
    if-ge v10, v9, :cond_c

    .line 1512
    aget-byte v11, v6, v10

    if-ne v11, v0, :cond_b

    .line 1513
    iget v11, v2, Lokio/Segment;->pos:I

    sub-int v11, v10, v11

    int-to-long v11, v11

    add-long v11, v11, v19

    move-wide v9, v11

    goto :goto_6

    .line 1515
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1519
    :cond_c
    iget v11, v2, Lokio/Segment;->limit:I

    iget v12, v2, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v11, v11

    add-long v19, v19, v11

    .line 1520
    move-wide/from16 v3, v19

    .line 1521
    iget-object v11, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v11

    move/from16 v6, v17

    move-wide/from16 v9, v21

    move-object/from16 v11, v23

    move-wide/from16 v12, v26

    .end local v6    # "data$iv":[B
    .end local v9    # "limit$iv":I
    .end local v10    # "pos$iv":I
    goto :goto_4

    .line 1524
    .end local v17    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v21    # "offset$iv$iv":J
    .end local v23    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v26    # "fromIndex$iv$iv":J
    .local v6, "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .local v9, "offset$iv$iv":J
    .restart local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v12    # "fromIndex$iv$iv":J
    :cond_d
    move/from16 v17, v6

    move-wide/from16 v21, v9

    move-object/from16 v23, v11

    move-wide/from16 v26, v12

    .end local v6    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v9    # "offset$iv$iv":J
    .end local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v12    # "fromIndex$iv$iv":J
    .restart local v17    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .restart local v21    # "offset$iv$iv":J
    .restart local v23    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v26    # "fromIndex$iv$iv":J
    const-wide/16 v9, -0x1

    .line 475
    .end local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "s$iv$iv":Lokio/Segment;
    .end local v7    # "toIndex$iv":J
    .end local v14    # "offset$iv":J
    .end local v16    # "s$iv":Lokio/Segment;
    .end local v17    # "$i$a$-seek-BufferKt$commonIndexOf$2$iv":I
    .end local v18    # "$i$f$commonIndexOf":I
    .end local v19    # "offset$iv":J
    .end local v21    # "offset$iv$iv":J
    .end local v23    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv$iv":J
    :goto_6
    return-wide v9

    .line 1539
    .restart local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "s$iv$iv":Lokio/Segment;
    .restart local v7    # "toIndex$iv":J
    .restart local v9    # "offset$iv$iv":J
    .restart local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v12    # "fromIndex$iv$iv":J
    .local v14, "nextOffset$iv$iv":J
    .restart local v18    # "$i$f$commonIndexOf":I
    .restart local v25    # "$i$f$seek":I
    :cond_e
    move-wide/from16 v21, v9

    move-object/from16 v23, v11

    move-wide/from16 v26, v12

    .end local v9    # "offset$iv$iv":J
    .end local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v12    # "fromIndex$iv$iv":J
    .restart local v21    # "offset$iv$iv":J
    .restart local v23    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v26    # "fromIndex$iv$iv":J
    iget-object v2, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    .line 1540
    move-wide v9, v14

    .end local v14    # "nextOffset$iv$iv":J
    .end local v21    # "offset$iv$iv":J
    .restart local v9    # "offset$iv$iv":J
    goto/16 :goto_3

    .line 1497
    .end local v7    # "toIndex$iv":J
    .end local v9    # "offset$iv$iv":J
    .end local v18    # "$i$f$commonIndexOf":I
    .end local v23    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .local v5, "toIndex$iv":J
    :cond_f
    move/from16 v18, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v18    # "$i$f$commonIndexOf":I
    const/4 v2, 0x0

    .line 1496
    .local v2, "$i$a$-require-BufferKt$commonIndexOf$1$iv":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " fromIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " toIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonIndexOf$1$iv":I
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 32
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1543
    .local v2, "$i$f$commonIndexOf":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1544
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_10

    .line 1546
    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_f

    .line 1548
    move-wide v8, v3

    .local v8, "fromIndex$iv$iv":J
    move-object v5, v0

    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1549
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    const/4 v6, 0x0

    const-wide/16 v14, -0x1

    .local v14, "offset$iv":J
    check-cast v6, Lokio/Segment;

    .local v6, "s$iv":Lokio/Segment;
    const/4 v7, 0x0

    .line 1550
    .local v7, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    const-wide/16 v12, -0x1

    goto/16 :goto_7

    .end local v6    # "s$iv":Lokio/Segment;
    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v14    # "offset$iv":J
    :cond_2
    nop

    .line 1577
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    if-gez v14, :cond_8

    .line 1579
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v17

    .line 1580
    .local v17, "offset$iv$iv":J
    :goto_2
    cmp-long v14, v17, v8

    if-lez v14, :cond_3

    .line 1581
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 1582
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v17, v17, v12

    goto :goto_2

    .line 1584
    :cond_3
    move-object v12, v11

    .local v12, "s$iv":Lokio/Segment;
    move-wide/from16 v13, v17

    .local v13, "offset$iv":J
    const/16 v19, 0x0

    .line 1550
    .local v19, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    if-nez v12, :cond_4

    const-wide/16 v12, -0x1

    goto/16 :goto_7

    :cond_4
    move-object/from16 v20, v12

    .line 1551
    .local v20, "s$iv":Lokio/Segment;
    move-wide/from16 v21, v13

    .line 1555
    .local v21, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v7

    .line 1556
    .local v7, "targetByteArray$iv":[B
    aget-byte v6, v7, v6

    .line 1557
    .local v6, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    .line 1558
    .local v15, "bytesSize$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v26

    move/from16 v16, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .local v16, "$i$f$commonIndexOf":I
    int-to-long v1, v15

    sub-long v26, v26, v1

    const-wide/16 v1, 0x1

    add-long v26, v26, v1

    move-object/from16 v1, v20

    .line 1559
    .end local v20    # "s$iv":Lokio/Segment;
    .local v1, "s$iv":Lokio/Segment;
    .local v26, "resultLimit$iv":J
    :goto_3
    cmp-long v2, v21, v26

    if-gez v2, :cond_7

    .line 1561
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1562
    .local v2, "data$iv":[B
    move-object/from16 v20, v5

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v20, "$this$seek$iv$iv":Lokio/Buffer;
    iget v5, v1, Lokio/Segment;->limit:I

    move/from16 v28, v10

    .end local v10    # "$i$f$seek":I
    .local v5, "a$iv$iv":I
    .local v28, "$i$f$seek":I
    iget v10, v1, Lokio/Segment;->pos:I

    move-object/from16 v24, v11

    .end local v11    # "s$iv$iv":Lokio/Segment;
    .local v24, "s$iv$iv":Lokio/Segment;
    int-to-long v10, v10

    add-long v10, v10, v26

    sub-long v10, v10, v21

    .local v10, "b$iv$iv":J
    const/16 v25, 0x0

    .line 1563
    .local v25, "$i$f$minOf":I
    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .local v29, "s$iv":Lokio/Segment;
    .local v30, "offset$iv":J
    int-to-long v12, v5

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1562
    .end local v5    # "a$iv$iv":I
    .end local v10    # "b$iv$iv":J
    .end local v25    # "$i$f$minOf":I
    long-to-int v5, v12

    .line 1564
    .local v5, "segmentLimit$iv":I
    iget v10, v1, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long/2addr v10, v3

    sub-long v10, v10, v21

    long-to-int v10, v10

    :cond_5
    if-ge v10, v5, :cond_6

    move v11, v10

    .local v11, "pos$iv":I
    add-int/lit8 v10, v10, 0x1

    .line 1565
    aget-byte v12, v2, v11

    if-ne v12, v6, :cond_5

    add-int/lit8 v12, v11, 0x1

    const/4 v13, 0x1

    invoke-static {v1, v12, v7, v13, v15}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1566
    iget v10, v1, Lokio/Segment;->pos:I

    sub-int v10, v11, v10

    int-to-long v12, v10

    add-long v12, v12, v21

    goto/16 :goto_7

    .line 1571
    .end local v11    # "pos$iv":I
    :cond_6
    iget v10, v1, Lokio/Segment;->limit:I

    iget v11, v1, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long v21, v21, v10

    .line 1572
    move-wide/from16 v3, v21

    .line 1573
    iget-object v10, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v10

    move-object/from16 v5, v20

    move-object/from16 v11, v24

    move/from16 v10, v28

    move-object/from16 v12, v29

    move-wide/from16 v13, v30

    .end local v2    # "data$iv":[B
    .end local v5    # "segmentLimit$iv":I
    goto :goto_3

    .line 1576
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v24    # "s$iv$iv":Lokio/Segment;
    .end local v28    # "$i$f$seek":I
    .end local v29    # "s$iv":Lokio/Segment;
    .end local v30    # "offset$iv":J
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .local v11, "s$iv$iv":Lokio/Segment;
    .restart local v12    # "s$iv":Lokio/Segment;
    .restart local v13    # "offset$iv":J
    :cond_7
    move-object/from16 v20, v5

    move/from16 v28, v10

    move-object/from16 v24, v11

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v24    # "s$iv$iv":Lokio/Segment;
    .restart local v28    # "$i$f$seek":I
    .restart local v29    # "s$iv":Lokio/Segment;
    .restart local v30    # "offset$iv":J
    const-wide/16 v12, -0x1

    goto/16 :goto_7

    .line 1587
    .end local v1    # "s$iv":Lokio/Segment;
    .end local v6    # "b0$iv":B
    .end local v7    # "targetByteArray$iv":[B
    .end local v15    # "bytesSize$iv":I
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v17    # "offset$iv$iv":J
    .end local v19    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v21    # "offset$iv":J
    .end local v24    # "s$iv$iv":Lokio/Segment;
    .end local v26    # "resultLimit$iv":J
    .end local v28    # "$i$f$seek":I
    .end local v29    # "s$iv":Lokio/Segment;
    .end local v30    # "offset$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    :cond_8
    move/from16 v16, v2

    move-object/from16 v20, v5

    move/from16 v28, v10

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v28    # "$i$f$seek":I
    const-wide/16 v1, 0x0

    .line 1588
    .local v1, "offset$iv$iv":J
    :goto_4
    nop

    .line 1589
    iget v5, v11, Lokio/Segment;->limit:I

    iget v7, v11, Lokio/Segment;->pos:I

    sub-int/2addr v5, v7

    int-to-long v12, v5

    add-long/2addr v12, v1

    .line 1590
    .local v12, "nextOffset$iv$iv":J
    cmp-long v5, v12, v8

    if-lez v5, :cond_e

    .line 1594
    .end local v12    # "nextOffset$iv$iv":J
    move-object v5, v11

    .local v5, "s$iv":Lokio/Segment;
    move-wide v12, v1

    .local v12, "offset$iv":J
    const/4 v7, 0x0

    .line 1550
    .local v7, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    if-nez v5, :cond_9

    const-wide/16 v12, -0x1

    goto/16 :goto_7

    :cond_9
    move-object v10, v5

    .line 1551
    .local v10, "s$iv":Lokio/Segment;
    move-wide v14, v12

    .line 1555
    .restart local v14    # "offset$iv":J
    move-wide/from16 v17, v1

    .end local v1    # "offset$iv$iv":J
    .restart local v17    # "offset$iv$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v1

    .line 1556
    .local v1, "targetByteArray$iv":[B
    aget-byte v2, v1, v6

    .line 1557
    .local v2, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v6

    .line 1558
    .local v6, "bytesSize$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v26, v8

    move v9, v7

    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v8    # "fromIndex$iv$iv":J
    .local v9, "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .local v26, "fromIndex$iv$iv":J
    int-to-long v7, v6

    sub-long v21, v21, v7

    const-wide/16 v7, 0x1

    add-long v21, v21, v7

    .line 1559
    .local v21, "resultLimit$iv":J
    :goto_5
    cmp-long v7, v14, v21

    if-gez v7, :cond_d

    .line 1561
    iget-object v7, v10, Lokio/Segment;->data:[B

    .line 1562
    .local v7, "data$iv":[B
    iget v8, v10, Lokio/Segment;->limit:I

    move-object/from16 v19, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v8, "a$iv$iv":I
    .local v19, "$this$commonIndexOf$iv":Lokio/Buffer;
    iget v0, v10, Lokio/Segment;->pos:I

    move-wide/from16 v24, v12

    .end local v12    # "offset$iv":J
    .local v24, "offset$iv":J
    int-to-long v12, v0

    add-long v12, v12, v21

    sub-long/2addr v12, v14

    .local v12, "b$iv$iv":J
    const/4 v0, 0x0

    .line 1563
    .local v0, "$i$f$minOf":I
    move/from16 v30, v0

    move-object/from16 v29, v1

    .end local v0    # "$i$f$minOf":I
    .end local v1    # "targetByteArray$iv":[B
    .local v29, "targetByteArray$iv":[B
    .local v30, "$i$f$minOf":I
    int-to-long v0, v8

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1562
    .end local v8    # "a$iv$iv":I
    .end local v12    # "b$iv$iv":J
    .end local v30    # "$i$f$minOf":I
    long-to-int v0, v0

    .line 1564
    .local v0, "segmentLimit$iv":I
    iget v1, v10, Lokio/Segment;->pos:I

    int-to-long v12, v1

    add-long/2addr v12, v3

    sub-long/2addr v12, v14

    long-to-int v1, v12

    :goto_6
    if-ge v1, v0, :cond_c

    move v8, v1

    .local v8, "pos$iv":I
    add-int/lit8 v1, v1, 0x1

    .line 1565
    aget-byte v12, v7, v8

    if-ne v12, v2, :cond_a

    add-int/lit8 v12, v8, 0x1

    move/from16 v23, v0

    move-object/from16 v13, v29

    const/4 v0, 0x1

    .end local v0    # "segmentLimit$iv":I
    .end local v29    # "targetByteArray$iv":[B
    .local v13, "targetByteArray$iv":[B
    .local v23, "segmentLimit$iv":I
    invoke-static {v10, v12, v13, v0, v6}, Lokio/internal/BufferKt;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1566
    iget v0, v10, Lokio/Segment;->pos:I

    sub-int v0, v8, v0

    int-to-long v0, v0

    add-long/2addr v0, v14

    move-wide v12, v0

    goto :goto_7

    .line 1565
    .end local v13    # "targetByteArray$iv":[B
    .end local v23    # "segmentLimit$iv":I
    .restart local v0    # "segmentLimit$iv":I
    .restart local v29    # "targetByteArray$iv":[B
    :cond_a
    move/from16 v23, v0

    move-object/from16 v13, v29

    const/4 v0, 0x1

    .line 1564
    .end local v0    # "segmentLimit$iv":I
    .end local v8    # "pos$iv":I
    .end local v29    # "targetByteArray$iv":[B
    .restart local v13    # "targetByteArray$iv":[B
    .restart local v23    # "segmentLimit$iv":I
    :cond_b
    move-object/from16 v29, v13

    move/from16 v0, v23

    goto :goto_6

    .line 1571
    .end local v13    # "targetByteArray$iv":[B
    .end local v23    # "segmentLimit$iv":I
    .restart local v0    # "segmentLimit$iv":I
    .restart local v29    # "targetByteArray$iv":[B
    :cond_c
    move/from16 v23, v0

    move-object/from16 v13, v29

    const/4 v0, 0x1

    .end local v0    # "segmentLimit$iv":I
    .end local v29    # "targetByteArray$iv":[B
    .restart local v13    # "targetByteArray$iv":[B
    .restart local v23    # "segmentLimit$iv":I
    iget v1, v10, Lokio/Segment;->limit:I

    iget v8, v10, Lokio/Segment;->pos:I

    sub-int/2addr v1, v8

    int-to-long v0, v1

    add-long/2addr v14, v0

    .line 1572
    move-wide v3, v14

    .line 1573
    iget-object v0, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v0

    move-object v1, v13

    move-object/from16 v0, v19

    move-wide/from16 v12, v24

    .end local v7    # "data$iv":[B
    .end local v23    # "segmentLimit$iv":I
    goto :goto_5

    .line 1576
    .end local v13    # "targetByteArray$iv":[B
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v24    # "offset$iv":J
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v1    # "targetByteArray$iv":[B
    .local v12, "offset$iv":J
    :cond_d
    move-object/from16 v19, v0

    move-wide/from16 v24, v12

    move-object v13, v1

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v1    # "targetByteArray$iv":[B
    .end local v12    # "offset$iv":J
    .restart local v13    # "targetByteArray$iv":[B
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v24    # "offset$iv":J
    const-wide/16 v12, -0x1

    .line 481
    .end local v2    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v6    # "bytesSize$iv":I
    .end local v9    # "$i$a$-seek-BufferKt$commonIndexOf$5$iv":I
    .end local v10    # "s$iv":Lokio/Segment;
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v13    # "targetByteArray$iv":[B
    .end local v14    # "offset$iv":J
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v17    # "offset$iv$iv":J
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v21    # "resultLimit$iv":J
    .end local v24    # "offset$iv":J
    .end local v26    # "fromIndex$iv$iv":J
    .end local v28    # "$i$f$seek":I
    :goto_7
    return-wide v12

    .line 1591
    .restart local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v1, "offset$iv$iv":J
    .restart local v3    # "fromIndex$iv":J
    .local v8, "fromIndex$iv$iv":J
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .local v12, "nextOffset$iv$iv":J
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v28    # "$i$f$seek":I
    :cond_e
    move-object/from16 v19, v0

    move-wide/from16 v17, v1

    move-wide/from16 v26, v8

    const-wide/16 v7, 0x1

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v1    # "offset$iv$iv":J
    .end local v8    # "fromIndex$iv$iv":J
    .restart local v17    # "offset$iv$iv":J
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v26    # "fromIndex$iv$iv":J
    iget-object v0, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v0

    .line 1592
    move-wide v1, v12

    move-object/from16 v0, v19

    move-wide/from16 v8, v26

    .end local v12    # "nextOffset$iv$iv":J
    .end local v17    # "offset$iv$iv":J
    .restart local v1    # "offset$iv$iv":J
    goto/16 :goto_4

    .line 1545
    .end local v1    # "offset$iv$iv":J
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v26    # "fromIndex$iv$iv":J
    .end local v28    # "$i$f$seek":I
    .restart local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    :cond_f
    move-object/from16 v19, v0

    move/from16 v16, v2

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v16    # "$i$f$commonIndexOf":I
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1546
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$4$iv":I
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fromIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$4$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1545
    .end local v16    # "$i$f$commonIndexOf":I
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v2    # "$i$f$commonIndexOf":I
    :cond_10
    move-object/from16 v19, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1544
    .local v0, "$i$a$-require-BufferKt$commonIndexOf$3$iv":I
    nop

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOf$3$iv":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;

    const-string v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 29
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J

    move-object/from16 v0, p1

    const-string v1, "targetBytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1595
    .local v2, "$i$f$commonIndexOfElement":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1596
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    if-eqz v5, :cond_19

    .line 1598
    move-wide v8, v3

    .local v8, "fromIndex$iv$iv":J
    move-object v5, v1

    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1599
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_1

    const/4 v6, 0x0

    const-wide/16 v14, -0x1

    .local v14, "offset$iv":J
    check-cast v6, Lokio/Segment;

    .local v6, "s$iv":Lokio/Segment;
    const/4 v7, 0x0

    .line 1600
    .local v7, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .end local v6    # "s$iv":Lokio/Segment;
    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v14    # "offset$iv":J
    :cond_1
    nop

    .line 1650
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    cmp-long v14, v14, v8

    const/4 v15, 0x2

    if-gez v14, :cond_d

    .line 1652
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v16

    .line 1653
    .local v16, "offset$iv$iv":J
    :goto_1
    cmp-long v14, v16, v8

    if-lez v14, :cond_2

    .line 1654
    iget-object v14, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v14

    .line 1655
    iget v14, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v14, v12

    int-to-long v12, v14

    sub-long v16, v16, v12

    goto :goto_1

    .line 1657
    :cond_2
    move-object v12, v11

    .local v12, "s$iv":Lokio/Segment;
    move-wide/from16 v13, v16

    .local v13, "offset$iv":J
    const/16 v18, 0x0

    .line 1600
    .local v18, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    if-nez v12, :cond_3

    const-wide/16 v12, -0x1

    goto/16 :goto_11

    :cond_3
    move-object/from16 v19, v12

    .line 1601
    .local v19, "s$iv":Lokio/Segment;
    move-wide/from16 v20, v13

    .line 1606
    .local v20, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v7, v15, :cond_8

    .line 1608
    invoke-virtual {v0, v6}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 1609
    .local v6, "b0$iv":B
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lokio/ByteString;->getByte(I)B

    move-result v7

    move-object/from16 v15, v19

    .line 1610
    .end local v19    # "s$iv":Lokio/Segment;
    .local v7, "b1$iv":B
    .local v15, "s$iv":Lokio/Segment;
    :goto_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_7

    .line 1611
    move/from16 v23, v2

    .end local v2    # "$i$f$commonIndexOfElement":I
    .local v23, "$i$f$commonIndexOfElement":I
    iget-object v2, v15, Lokio/Segment;->data:[B

    .line 1612
    .local v2, "data$iv":[B
    move-object/from16 v24, v5

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .local v24, "$this$seek$iv$iv":Lokio/Buffer;
    iget v5, v15, Lokio/Segment;->pos:I

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .local v22, "s$iv$iv":Lokio/Segment;
    .local v25, "$i$f$seek":I
    int-to-long v10, v5

    add-long/2addr v10, v3

    sub-long v10, v10, v20

    long-to-int v5, v10

    .line 1613
    .local v5, "pos$iv":I
    iget v10, v15, Lokio/Segment;->limit:I

    .line 1614
    .local v10, "limit$iv":I
    :goto_3
    if-ge v5, v10, :cond_6

    .line 1615
    aget-byte v11, v2, v5

    .line 1616
    .local v11, "b$iv":I
    if-eq v11, v6, :cond_5

    if-ne v11, v7, :cond_4

    goto :goto_4

    .line 1619
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .end local v11    # "b$iv":I
    goto :goto_3

    .line 1617
    .restart local v11    # "b$iv":I
    :cond_5
    :goto_4
    move-object/from16 v19, v2

    .end local v2    # "data$iv":[B
    .local v19, "data$iv":[B
    iget v2, v15, Lokio/Segment;->pos:I

    sub-int v2, v5, v2

    move-wide/from16 v26, v3

    .end local v3    # "fromIndex$iv":J
    .local v26, "fromIndex$iv":J
    int-to-long v2, v2

    add-long v2, v2, v20

    move-wide v12, v2

    goto/16 :goto_11

    .line 1623
    .end local v11    # "b$iv":I
    .end local v19    # "data$iv":[B
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "data$iv":[B
    .restart local v3    # "fromIndex$iv":J
    :cond_6
    move-object/from16 v19, v2

    move-wide/from16 v26, v3

    .end local v2    # "data$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v19    # "data$iv":[B
    .restart local v26    # "fromIndex$iv":J
    iget v2, v15, Lokio/Segment;->limit:I

    iget v3, v15, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v20, v20, v2

    .line 1624
    move-wide/from16 v3, v20

    .line 1625
    .end local v26    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v2, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v2

    move-object/from16 v11, v22

    move/from16 v2, v23

    move-object/from16 v5, v24

    move/from16 v10, v25

    .end local v5    # "pos$iv":I
    .end local v10    # "limit$iv":I
    .end local v19    # "data$iv":[B
    goto :goto_2

    .line 1610
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .local v2, "$i$f$commonIndexOfElement":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .local v11, "s$iv$iv":Lokio/Segment;
    :cond_7
    move/from16 v23, v2

    move-wide/from16 v26, v3

    move-object/from16 v24, v5

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv$iv":Lokio/Segment;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    .restart local v26    # "fromIndex$iv":J
    goto/16 :goto_8

    .line 1629
    .end local v6    # "b0$iv":B
    .end local v7    # "b1$iv":B
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "$i$f$commonIndexOfElement":I
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v10    # "$i$f$seek":I
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .local v19, "s$iv":Lokio/Segment;
    :cond_8
    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    move-object/from16 v22, v11

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .restart local v22    # "s$iv$iv":Lokio/Segment;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v2

    move-object/from16 v5, v19

    .line 1630
    .end local v19    # "s$iv":Lokio/Segment;
    .local v2, "targetByteArray$iv":[B
    .local v5, "s$iv":Lokio/Segment;
    :goto_5
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v10

    cmp-long v7, v20, v10

    if-gez v7, :cond_c

    .line 1631
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 1632
    .local v7, "data$iv":[B
    iget v10, v5, Lokio/Segment;->pos:I

    int-to-long v10, v10

    add-long/2addr v10, v3

    sub-long v10, v10, v20

    long-to-int v10, v10

    .line 1633
    .local v10, "pos$iv":I
    iget v11, v5, Lokio/Segment;->limit:I

    .line 1634
    .local v11, "limit$iv":I
    :goto_6
    if-ge v10, v11, :cond_b

    .line 1635
    aget-byte v15, v7, v10

    .line 1636
    .local v15, "b$iv":I
    array-length v6, v2

    move-wide/from16 v26, v3

    const/4 v3, 0x0

    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    :goto_7
    if-ge v3, v6, :cond_a

    aget-byte v4, v2, v3

    .local v4, "t$iv":B
    add-int/lit8 v3, v3, 0x1

    .line 1637
    if-ne v15, v4, :cond_9

    iget v3, v5, Lokio/Segment;->pos:I

    sub-int v3, v10, v3

    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .local v28, "targetByteArray$iv":[B
    int-to-long v2, v3

    add-long v2, v2, v20

    move-wide v12, v2

    goto/16 :goto_11

    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_9
    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .restart local v28    # "targetByteArray$iv":[B
    goto :goto_7

    .line 1639
    .end local v4    # "t$iv":B
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_a
    move-object/from16 v28, v2

    .end local v2    # "targetByteArray$iv":[B
    .restart local v28    # "targetByteArray$iv":[B
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v26

    const/4 v6, 0x0

    .end local v15    # "b$iv":I
    goto :goto_6

    .line 1643
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    .restart local v3    # "fromIndex$iv":J
    :cond_b
    move-object/from16 v28, v2

    move-wide/from16 v26, v3

    .end local v2    # "targetByteArray$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    .restart local v28    # "targetByteArray$iv":[B
    iget v2, v5, Lokio/Segment;->limit:I

    iget v3, v5, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long v20, v20, v2

    .line 1644
    move-wide/from16 v3, v20

    .line 1645
    .end local v26    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v2, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v2

    move-object/from16 v2, v28

    const/4 v6, 0x0

    .end local v7    # "data$iv":[B
    .end local v10    # "pos$iv":I
    .end local v11    # "limit$iv":I
    goto :goto_5

    .line 1630
    .end local v28    # "targetByteArray$iv":[B
    .restart local v2    # "targetByteArray$iv":[B
    :cond_c
    move-object/from16 v28, v2

    move-wide/from16 v26, v3

    .end local v2    # "targetByteArray$iv":[B
    .end local v3    # "fromIndex$iv":J
    .restart local v26    # "fromIndex$iv":J
    .restart local v28    # "targetByteArray$iv":[B
    move-object v15, v5

    .line 1649
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v26    # "fromIndex$iv":J
    .end local v28    # "targetByteArray$iv":[B
    .restart local v3    # "fromIndex$iv":J
    .local v15, "s$iv":Lokio/Segment;
    :goto_8
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .line 1660
    .end local v12    # "s$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v16    # "offset$iv$iv":J
    .end local v18    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v20    # "offset$iv":J
    .end local v22    # "s$iv$iv":Lokio/Segment;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .local v2, "$i$f$commonIndexOfElement":I
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .local v10, "$i$f$seek":I
    .local v11, "s$iv$iv":Lokio/Segment;
    :cond_d
    move/from16 v23, v2

    move-object/from16 v24, v5

    move/from16 v25, v10

    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    const-wide/16 v5, 0x0

    .line 1661
    .local v5, "offset$iv$iv":J
    :goto_9
    nop

    .line 1662
    iget v2, v11, Lokio/Segment;->limit:I

    iget v7, v11, Lokio/Segment;->pos:I

    sub-int/2addr v2, v7

    int-to-long v12, v2

    add-long/2addr v12, v5

    .line 1663
    .local v12, "nextOffset$iv$iv":J
    cmp-long v2, v12, v8

    if-lez v2, :cond_18

    .line 1667
    .end local v12    # "nextOffset$iv$iv":J
    move-object v2, v11

    .local v2, "s$iv":Lokio/Segment;
    move-wide v12, v5

    .local v12, "offset$iv":J
    const/4 v7, 0x0

    .line 1600
    .local v7, "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    if-nez v2, :cond_e

    const-wide/16 v12, -0x1

    goto/16 :goto_11

    :cond_e
    move-object v10, v2

    .line 1601
    .local v10, "s$iv":Lokio/Segment;
    move-wide/from16 v16, v12

    .line 1606
    .local v16, "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v14

    if-ne v14, v15, :cond_13

    .line 1608
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lokio/ByteString;->getByte(I)B

    move-result v14

    .line 1609
    .local v14, "b0$iv":B
    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lokio/ByteString;->getByte(I)B

    move-result v15

    .line 1610
    .local v15, "b1$iv":B
    :goto_a
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_12

    .line 1611
    iget-object v0, v10, Lokio/Segment;->data:[B

    .line 1612
    .local v0, "data$iv":[B
    move-object/from16 v18, v2

    .end local v2    # "s$iv":Lokio/Segment;
    .local v18, "s$iv":Lokio/Segment;
    iget v2, v10, Lokio/Segment;->pos:I

    move-wide/from16 v19, v5

    .end local v5    # "offset$iv$iv":J
    .local v19, "offset$iv$iv":J
    int-to-long v5, v2

    add-long/2addr v5, v3

    sub-long v5, v5, v16

    long-to-int v2, v5

    .line 1613
    .local v2, "pos$iv":I
    iget v5, v10, Lokio/Segment;->limit:I

    .line 1614
    .local v5, "limit$iv":I
    :goto_b
    if-ge v2, v5, :cond_11

    .line 1615
    aget-byte v6, v0, v2

    .line 1616
    .local v6, "b$iv":I
    if-eq v6, v14, :cond_10

    if-ne v6, v15, :cond_f

    goto :goto_c

    .line 1619
    :cond_f
    add-int/lit8 v2, v2, 0x1

    .end local v6    # "b$iv":I
    goto :goto_b

    .line 1617
    .restart local v6    # "b$iv":I
    :cond_10
    :goto_c
    move-object/from16 v21, v0

    .end local v0    # "data$iv":[B
    .local v21, "data$iv":[B
    iget v0, v10, Lokio/Segment;->pos:I

    sub-int v0, v2, v0

    move-wide/from16 v26, v3

    move v4, v2

    .end local v2    # "pos$iv":I
    .end local v3    # "fromIndex$iv":J
    .local v4, "pos$iv":I
    .restart local v26    # "fromIndex$iv":J
    int-to-long v2, v0

    add-long v2, v2, v16

    move-wide v12, v2

    goto/16 :goto_11

    .line 1623
    .end local v4    # "pos$iv":I
    .end local v6    # "b$iv":I
    .end local v21    # "data$iv":[B
    .end local v26    # "fromIndex$iv":J
    .restart local v0    # "data$iv":[B
    .restart local v2    # "pos$iv":I
    .restart local v3    # "fromIndex$iv":J
    :cond_11
    move-object/from16 v21, v0

    move-wide/from16 v26, v3

    move v4, v2

    .end local v0    # "data$iv":[B
    .end local v2    # "pos$iv":I
    .end local v3    # "fromIndex$iv":J
    .restart local v4    # "pos$iv":I
    .restart local v21    # "data$iv":[B
    .restart local v26    # "fromIndex$iv":J
    iget v0, v10, Lokio/Segment;->limit:I

    iget v2, v10, Lokio/Segment;->pos:I

    sub-int/2addr v0, v2

    int-to-long v2, v0

    add-long v16, v16, v2

    .line 1624
    move-wide/from16 v2, v16

    .line 1625
    .end local v26    # "fromIndex$iv":J
    .local v2, "fromIndex$iv":J
    iget-object v0, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v0

    move-object/from16 v0, p1

    move-wide v3, v2

    move-object/from16 v2, v18

    move-wide/from16 v5, v19

    .end local v4    # "pos$iv":I
    .end local v5    # "limit$iv":I
    .end local v21    # "data$iv":[B
    goto :goto_a

    .line 1610
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .local v2, "s$iv":Lokio/Segment;
    .restart local v3    # "fromIndex$iv":J
    .local v5, "offset$iv$iv":J
    :cond_12
    move-object/from16 v18, v2

    move-wide/from16 v26, v3

    move-wide/from16 v19, v5

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "offset$iv$iv":J
    .restart local v18    # "s$iv":Lokio/Segment;
    .restart local v19    # "offset$iv$iv":J
    .restart local v26    # "fromIndex$iv":J
    move-object/from16 v22, v1

    goto/16 :goto_10

    .line 1629
    .end local v14    # "b0$iv":B
    .end local v15    # "b1$iv":B
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .end local v26    # "fromIndex$iv":J
    .restart local v2    # "s$iv":Lokio/Segment;
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "offset$iv$iv":J
    :cond_13
    move-object/from16 v18, v2

    move-wide/from16 v19, v5

    const/4 v14, 0x0

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v5    # "offset$iv$iv":J
    .restart local v18    # "s$iv":Lokio/Segment;
    .restart local v19    # "offset$iv$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v0

    .line 1630
    .local v0, "targetByteArray$iv":[B
    :goto_d
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v2, v16, v5

    if-gez v2, :cond_17

    .line 1631
    iget-object v2, v10, Lokio/Segment;->data:[B

    .line 1632
    .local v2, "data$iv":[B
    iget v5, v10, Lokio/Segment;->pos:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long v5, v5, v16

    long-to-int v5, v5

    .line 1633
    .local v5, "pos$iv":I
    iget v6, v10, Lokio/Segment;->limit:I

    .line 1634
    .local v6, "limit$iv":I
    :goto_e
    if-ge v5, v6, :cond_16

    .line 1635
    aget-byte v15, v2, v5

    .line 1636
    .local v15, "b$iv":I
    array-length v14, v0

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v22, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :goto_f
    if-ge v1, v14, :cond_15

    move-object/from16 v26, v2

    .end local v2    # "data$iv":[B
    .local v26, "data$iv":[B
    aget-byte v2, v0, v1

    .local v2, "t$iv":B
    add-int/lit8 v1, v1, 0x1

    .line 1637
    if-ne v15, v2, :cond_14

    iget v1, v10, Lokio/Segment;->pos:I

    sub-int v1, v5, v1

    move-object/from16 v27, v0

    .end local v0    # "targetByteArray$iv":[B
    .local v27, "targetByteArray$iv":[B
    int-to-long v0, v1

    add-long v0, v0, v16

    move-wide v12, v0

    goto :goto_11

    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    :cond_14
    move-object/from16 v27, v0

    .end local v0    # "targetByteArray$iv":[B
    .restart local v27    # "targetByteArray$iv":[B
    move-object/from16 v2, v26

    goto :goto_f

    .line 1639
    .end local v26    # "data$iv":[B
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .local v2, "data$iv":[B
    :cond_15
    move-object/from16 v27, v0

    move-object/from16 v26, v2

    .end local v0    # "targetByteArray$iv":[B
    .end local v2    # "data$iv":[B
    .restart local v26    # "data$iv":[B
    .restart local v27    # "targetByteArray$iv":[B
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v22

    const/4 v14, 0x0

    .end local v15    # "b$iv":I
    goto :goto_e

    .line 1643
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v26    # "data$iv":[B
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v2    # "data$iv":[B
    :cond_16
    move-object/from16 v27, v0

    move-object/from16 v22, v1

    move-object/from16 v26, v2

    .end local v0    # "targetByteArray$iv":[B
    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "data$iv":[B
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v26    # "data$iv":[B
    .restart local v27    # "targetByteArray$iv":[B
    iget v0, v10, Lokio/Segment;->limit:I

    iget v1, v10, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v16, v16, v0

    .line 1644
    move-wide/from16 v3, v16

    .line 1645
    iget-object v0, v10, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v0

    move-object/from16 v1, v22

    move-object/from16 v0, v27

    const/4 v14, 0x0

    .end local v5    # "pos$iv":I
    .end local v6    # "limit$iv":I
    .end local v26    # "data$iv":[B
    goto :goto_d

    .line 1630
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v27    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :cond_17
    move-object/from16 v27, v0

    move-object/from16 v22, v1

    .line 1649
    .end local v0    # "targetByteArray$iv":[B
    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    :goto_10
    const-wide/16 v12, -0x1

    .line 486
    .end local v3    # "fromIndex$iv":J
    .end local v7    # "$i$a$-seek-BufferKt$commonIndexOfElement$2$iv":I
    .end local v8    # "fromIndex$iv$iv":J
    .end local v10    # "s$iv":Lokio/Segment;
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v12    # "offset$iv":J
    .end local v16    # "offset$iv":J
    .end local v18    # "s$iv":Lokio/Segment;
    .end local v19    # "offset$iv$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    :goto_11
    return-wide v12

    .line 1664
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v3    # "fromIndex$iv":J
    .local v5, "offset$iv$iv":J
    .restart local v8    # "fromIndex$iv$iv":J
    .restart local v11    # "s$iv$iv":Lokio/Segment;
    .local v12, "nextOffset$iv$iv":J
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v25    # "$i$f$seek":I
    :cond_18
    move-object/from16 v22, v1

    move-wide/from16 v19, v5

    const/4 v0, 0x1

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v5    # "offset$iv$iv":J
    .restart local v19    # "offset$iv$iv":J
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    iget-object v1, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v1

    .line 1665
    move-wide v5, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    .end local v12    # "nextOffset$iv$iv":J
    .end local v19    # "offset$iv$iv":J
    .restart local v5    # "offset$iv$iv":J
    goto/16 :goto_9

    .line 1597
    .end local v5    # "offset$iv$iv":J
    .end local v8    # "fromIndex$iv$iv":J
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v25    # "$i$f$seek":I
    .restart local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOfElement":I
    :cond_19
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1596
    .local v0, "$i$a$-require-BufferKt$commonIndexOfElement$1$iv":I
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "fromIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferKt$commonIndexOfElement$1$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 123
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 507
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 88
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 2

    .line 119
    new-instance v0, Lokio/PeekSource;

    move-object v1, p0

    check-cast v1, Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v0, Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1668
    .local v1, "$i$f$commonRangeEquals":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    .line 1669
    if-ltz p4, :cond_3

    .line 1670
    if-ltz p5, :cond_3

    .line 1671
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    sub-long/2addr v4, p1

    int-to-long v6, p5

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3

    .line 1672
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_0

    goto :goto_0

    .line 1676
    :cond_0
    move v2, v3

    :cond_1
    if-ge v2, p5, :cond_2

    move v4, v2

    .local v4, "i$iv":I
    add-int/lit8 v2, v2, 0x1

    .line 1677
    int-to-long v5, v4

    add-long/2addr v5, p1

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v5

    add-int v6, p4, v4

    invoke-virtual {p3, v6}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1678
    goto :goto_1

    .line 1681
    .end local v4    # "i$iv":I
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 1674
    :cond_3
    :goto_0
    nop

    .line 496
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRangeEquals":I
    :goto_1
    return v3
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 357
    .local v0, "s":Lokio/Segment;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 358
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 360
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 361
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 363
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 364
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 365
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 368
    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 4
    .param p1, "sink"    # [B

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1067
    .local v1, "$i$f$commonRead":I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lokio/Buffer;->read([BII)I

    move-result v0

    .line 345
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1075
    .local v1, "$i$f$commonRead":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1077
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 1078
    .local v2, "s$iv":Lokio/Segment;
    :cond_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1079
    .local v3, "toCopy$iv":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 1080
    iget v5, v2, Lokio/Segment;->pos:I

    iget v6, v2, Lokio/Segment;->pos:I

    add-int/2addr v6, v3

    .line 1079
    invoke-static {v4, p1, p2, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1083
    iget v4, v2, Lokio/Segment;->pos:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->pos:I

    .line 1084
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1086
    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_1

    .line 1087
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1088
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1091
    :cond_1
    move v2, v3

    .line 351
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "toCopy$iv":I
    :goto_0
    return v2
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1487
    .local v1, "$i$f$commonRead":I
    const-wide/16 v2, 0x0

    .local v2, "byteCount$iv":J
    move-wide v2, p2

    .line 1488
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    .line 1490
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1491
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1492
    :cond_2
    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1493
    move-wide v4, v2

    .line 465
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    .end local v2    # "byteCount$iv":J
    :goto_1
    return-wide v4

    .line 1489
    .restart local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonRead":I
    .restart local v2    # "byteCount$iv":J
    :cond_3
    const/4 v4, 0x0

    .line 1488
    .local v4, "$i$a$-require-BufferKt$commonRead$1$iv":I
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "byteCount < 0: "

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require-BufferKt$commonRead$1$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public readAll(Lokio/Sink;)J
    .locals 6
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    move-object v0, p0

    .local v0, "$this$commonReadAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 958
    .local v1, "$i$f$commonReadAll":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 959
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 960
    invoke-interface {p1, v0, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 962
    :cond_0
    nop

    .line 295
    .end local v0    # "$this$commonReadAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadAll":I
    .end local v2    # "byteCount$iv":J
    return-wide v2
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-static {p0, p1}, Lokio/internal/BufferKt;->commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 255
    move-object v0, p0

    .local v0, "$this$commonReadByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 670
    .local v1, "$i$f$commonReadByte":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 672
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 673
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 674
    .local v3, "pos$iv":I
    iget v4, v2, Lokio/Segment;->limit:I

    .line 676
    .local v4, "limit$iv":I
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 677
    .local v5, "data$iv":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v6, "pos$iv":I
    aget-byte v3, v5, v3

    .line 678
    .local v3, "b$iv":B
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 680
    if-ne v6, v4, :cond_0

    .line 681
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 682
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 684
    :cond_0
    iput v6, v2, Lokio/Segment;->pos:I

    .line 687
    :goto_0
    nop

    .line 255
    .end local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByte":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "b$iv":B
    .end local v4    # "limit$iv":I
    .end local v5    # "data$iv":[B
    .end local v6    # "pos$iv":I
    return v3

    .line 670
    .restart local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByte":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readByteArray()[B
    .locals 4

    .line 340
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1059
    .local v1, "$i$f$commonReadByteArray":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    .line 340
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 343
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1060
    .local v1, "$i$f$commonReadByteArray":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1062
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    .line 1064
    long-to-int v2, p1

    new-array v2, v2, [B

    .line 1065
    .local v2, "result$iv":[B
    invoke-virtual {v0, v2}, Lokio/Buffer;->readFully([B)V

    .line 1066
    nop

    .line 343
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    .end local v2    # "result$iv":[B
    return-object v2

    .line 1062
    .restart local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteArray":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1061
    :cond_2
    const/4 v2, 0x0

    .line 1060
    .local v2, "$i$a$-require-BufferKt$commonReadByteArray$1$iv":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "byteCount: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadByteArray$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByteString()Lokio/ByteString;
    .locals 4

    .line 284
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 936
    .local v1, "$i$f$commonReadByteString":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 284
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 287
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 937
    .local v1, "$i$f$commonReadByteString":I
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 939
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2

    .line 941
    const-wide/16 v2, 0x1000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 942
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v2

    move-object v3, v2

    .line 938
    .local v3, "it$iv":Lokio/ByteString;
    const/4 v4, 0x0

    .line 942
    .local v4, "$i$a$-also-BufferKt$commonReadByteString$2$iv":I
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v3    # "it$iv":Lokio/ByteString;
    .end local v4    # "$i$a$-also-BufferKt$commonReadByteString$2$iv":I
    goto :goto_1

    .line 944
    :cond_1
    new-instance v2, Lokio/ByteString;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    .line 287
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    :goto_1
    return-object v2

    .line 939
    .restart local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteString":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 938
    :cond_3
    const/4 v2, 0x0

    .line 937
    .local v2, "$i$a$-require-BufferKt$commonReadByteString$1$iv":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "byteCount: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadByteString$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDecimalLong()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 279
    move-object/from16 v0, p0

    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 823
    .local v1, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    .line 826
    const-wide/16 v2, 0x0

    .line 827
    .local v2, "value$iv":J
    const/4 v4, 0x0

    .line 828
    .local v4, "seen$iv":I
    const/4 v5, 0x0

    .line 829
    .local v5, "negative$iv":Z
    const/4 v6, 0x0

    .line 831
    .local v6, "done$iv":Z
    const-wide/16 v7, -0x7

    .line 834
    .local v7, "overflowDigit$iv":J
    :goto_0
    iget-object v9, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 836
    .local v9, "segment$iv":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 837
    .local v10, "data$iv":[B
    iget v11, v9, Lokio/Segment;->pos:I

    .line 838
    .local v11, "pos$iv":I
    iget v12, v9, Lokio/Segment;->limit:I

    .line 840
    .local v12, "limit$iv":I
    :goto_1
    if-ge v11, v12, :cond_7

    .line 841
    aget-byte v13, v10, v11

    .line 842
    .local v13, "b$iv":B
    const/16 v14, 0x30

    if-lt v13, v14, :cond_4

    const/16 v14, 0x39

    if-gt v13, v14, :cond_4

    .line 843
    rsub-int/lit8 v14, v13, 0x30

    .line 846
    .local v14, "digit$iv":I
    const-wide v15, -0xcccccccccccccccL

    cmp-long v17, v2, v15

    if-ltz v17, :cond_2

    cmp-long v15, v2, v15

    if-nez v15, :cond_0

    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v15, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v16, "$i$f$commonReadDecimalLong":I
    int-to-long v0, v14

    cmp-long v0, v0, v7

    if-gez v0, :cond_1

    goto :goto_2

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    :cond_0
    move-object v15, v0

    move/from16 v16, v1

    .line 851
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    :cond_1
    const-wide/16 v0, 0xa

    mul-long/2addr v2, v0

    .line 852
    int-to-long v0, v14

    add-long/2addr v2, v0

    move/from16 v17, v6

    .end local v14    # "digit$iv":I
    goto :goto_3

    .line 846
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v14    # "digit$iv":I
    :cond_2
    move-object v15, v0

    move/from16 v16, v1

    .line 847
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    :goto_2
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 848
    .local v0, "buffer$iv":Lokio/Buffer;
    if-nez v5, :cond_3

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 849
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    move/from16 v17, v6

    .end local v6    # "done$iv":Z
    .local v17, "done$iv":Z
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v0

    .end local v0    # "buffer$iv":Lokio/Buffer;
    .local v18, "buffer$iv":Lokio/Buffer;
    const-string v0, "Number too large: "

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 842
    .end local v14    # "digit$iv":I
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .end local v17    # "done$iv":Z
    .end local v18    # "buffer$iv":Lokio/Buffer;
    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done$iv":Z
    :cond_4
    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v6

    .line 853
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v6    # "done$iv":Z
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    .restart local v17    # "done$iv":Z
    const/16 v0, 0x2d

    if-ne v13, v0, :cond_5

    if-nez v4, :cond_5

    .line 854
    const/4 v5, 0x1

    .line 855
    const-wide/16 v0, 0x1

    sub-long/2addr v7, v0

    .line 866
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 867
    add-int/lit8 v4, v4, 0x1

    move-object v0, v15

    move/from16 v1, v16

    move/from16 v6, v17

    .end local v13    # "b$iv":B
    goto :goto_1

    .line 857
    .restart local v13    # "b$iv":B
    :cond_5
    if-eqz v4, :cond_6

    .line 863
    const/4 v0, 0x1

    .line 864
    .end local v17    # "done$iv":Z
    .local v0, "done$iv":Z
    move v6, v0

    goto :goto_4

    .line 858
    .end local v0    # "done$iv":Z
    .restart local v17    # "done$iv":Z
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 859
    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    .end local v13    # "b$iv":B
    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadDecimalLong":I
    .end local v17    # "done$iv":Z
    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v6    # "done$iv":Z
    :cond_7
    move-object v15, v0

    move/from16 v16, v1

    move/from16 v17, v6

    .line 870
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    :goto_4
    if-ne v11, v12, :cond_8

    .line 871
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    move-object v1, v15

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    iput-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    .line 872
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 874
    .end local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    :cond_8
    move-object v1, v15

    .end local v15    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    iput v11, v9, Lokio/Segment;->pos:I

    .line 876
    :goto_5
    if-nez v6, :cond_a

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v0, v1

    move/from16 v1, v16

    goto/16 :goto_0

    .line 878
    .end local v9    # "segment$iv":Lokio/Segment;
    .end local v10    # "data$iv":[B
    .end local v11    # "pos$iv":I
    .end local v12    # "limit$iv":I
    :cond_a
    :goto_6
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v9

    int-to-long v11, v4

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 879
    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    neg-long v9, v2

    move-wide v2, v9

    .line 279
    .end local v1    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v2    # "value$iv":J
    .end local v4    # "seen$iv":I
    .end local v5    # "negative$iv":Z
    .end local v6    # "done$iv":Z
    .end local v7    # "overflowDigit$iv":J
    .end local v16    # "$i$f$commonReadDecimalLong":I
    :goto_7
    return-wide v2

    .line 823
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$i$f$commonReadDecimalLong":I
    :cond_c
    move/from16 v16, v1

    move-object v1, v0

    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .restart local v16    # "$i$f$commonReadDecimalLong":I
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 219
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0, p1, p2, p3, v1}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 227
    return-object p0

    .line 658
    :cond_1
    const/4 v0, 0x0

    .line 225
    .local v0, "$i$a$-require-Buffer$readFrom$1":I
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "byteCount < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readFrom$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 4
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 952
    .local v1, "$i$f$commonReadFully":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 956
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 957
    nop

    .line 292
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    return-void

    .line 953
    .restart local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadFully":I
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 954
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readFully([B)V
    .locals 5
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1068
    .local v1, "$i$f$commonReadFully":I
    const/4 v2, 0x0

    .line 1069
    .local v2, "offset$iv":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1070
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->read([BII)I

    move-result v3

    .line 1071
    .local v3, "read$iv":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1072
    add-int/2addr v2, v3

    .end local v3    # "read$iv":I
    goto :goto_0

    .line 1071
    .restart local v3    # "read$iv":I
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 1074
    .end local v3    # "read$iv":I
    :cond_1
    nop

    .line 348
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    .end local v2    # "offset$iv":I
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 282
    move-object/from16 v0, p0

    .local v0, "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 880
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    .line 882
    const-wide/16 v2, 0x0

    .line 883
    .local v2, "value$iv":J
    const/4 v6, 0x0

    .line 884
    .local v6, "seen$iv":I
    const/4 v7, 0x0

    .line 887
    .local v7, "done$iv":Z
    :cond_0
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 889
    .local v8, "segment$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 890
    .local v9, "data$iv":[B
    iget v10, v8, Lokio/Segment;->pos:I

    .line 891
    .local v10, "pos$iv":I
    iget v11, v8, Lokio/Segment;->limit:I

    .line 893
    .local v11, "limit$iv":I
    :goto_0
    if-ge v10, v11, :cond_6

    const/4 v12, 0x0

    .line 896
    .local v12, "digit$iv":I
    aget-byte v13, v9, v10

    .line 897
    .local v13, "b$iv":B
    const/16 v14, 0x30

    if-lt v13, v14, :cond_1

    const/16 v14, 0x39

    if-gt v13, v14, :cond_1

    .line 898
    add-int/lit8 v12, v13, -0x30

    goto :goto_1

    .line 899
    :cond_1
    const/16 v14, 0x61

    if-lt v13, v14, :cond_2

    const/16 v14, 0x66

    if-gt v13, v14, :cond_2

    .line 900
    add-int/lit8 v14, v13, -0x61

    add-int/lit8 v12, v14, 0xa

    goto :goto_1

    .line 901
    :cond_2
    const/16 v14, 0x41

    if-lt v13, v14, :cond_4

    const/16 v14, 0x46

    if-gt v13, v14, :cond_4

    .line 902
    add-int/lit8 v14, v13, -0x41

    add-int/lit8 v12, v14, 0xa

    .line 915
    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v2

    cmp-long v14, v14, v4

    if-nez v14, :cond_3

    .line 920
    const/4 v14, 0x4

    shl-long/2addr v2, v14

    .line 921
    int-to-long v14, v12

    or-long/2addr v2, v14

    .line 922
    add-int/lit8 v10, v10, 0x1

    .line 923
    add-int/lit8 v6, v6, 0x1

    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    goto :goto_0

    .line 916
    .restart local v12    # "digit$iv":I
    .restart local v13    # "b$iv":B
    :cond_3
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    .line 917
    .local v4, "buffer$iv":Lokio/Buffer;
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Number too large: "

    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 904
    .end local v4    # "buffer$iv":Lokio/Buffer;
    :cond_4
    if-eqz v6, :cond_5

    .line 910
    const/4 v7, 0x1

    .line 911
    goto :goto_2

    .line 905
    :cond_5
    new-instance v4, Ljava/lang/NumberFormatException;

    .line 906
    invoke-static {v13}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    const-string v14, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 905
    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 926
    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    :cond_6
    :goto_2
    if-ne v10, v11, :cond_7

    .line 927
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 928
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_3

    .line 930
    :cond_7
    iput v10, v8, Lokio/Segment;->pos:I

    .line 932
    :goto_3
    if-nez v7, :cond_8

    iget-object v12, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v12, :cond_0

    .line 934
    .end local v8    # "segment$iv":Lokio/Segment;
    .end local v9    # "data$iv":[B
    .end local v10    # "pos$iv":I
    .end local v11    # "limit$iv":I
    :cond_8
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v8, v6

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 935
    nop

    .line 282
    .end local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .end local v2    # "value$iv":J
    .end local v6    # "seen$iv":I
    .end local v7    # "done$iv":Z
    return-wide v2

    .line 880
    .restart local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_9
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readInt()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 264
    move-object v0, p0

    .local v0, "$this$commonReadInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 735
    .local v1, "$i$f$commonReadInt":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 737
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 738
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 739
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 742
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    if-gez v7, :cond_0

    .line 744
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 745
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 744
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x18

    .line 746
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 745
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 746
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x10

    .line 744
    or-int/2addr v4, v5

    .line 747
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 745
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 747
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x8

    .line 744
    or-int/2addr v4, v5

    .line 748
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 745
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 744
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 749
    goto :goto_1

    .line 757
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 759
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 745
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 759
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 760
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 745
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 760
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x10

    .line 759
    or-int/2addr v3, v8

    .line 761
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 745
    .restart local v11    # "$i$f$and":I
    and-int/2addr v9, v10

    .line 761
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v9, v9, 0x8

    .line 759
    or-int/2addr v3, v9

    .line 762
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 745
    .restart local v11    # "$i$f$and":I
    and-int/2addr v8, v10

    .line 759
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 758
    nop

    .line 764
    .local v3, "i$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 766
    if-ne v9, v6, :cond_1

    .line 767
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 768
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 770
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 773
    :goto_0
    move v4, v3

    .line 264
    .end local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadInt":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "i$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v4

    .line 735
    .restart local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadInt":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 267
    move-object v0, p0

    .local v0, "$this$commonReadLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 774
    .local v1, "$i$f$commonReadLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 776
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 777
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 778
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 781
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v7, v7, v4

    const/16 v8, 0x20

    if-gez v7, :cond_0

    .line 783
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv$iv":I
    const-wide v9, 0xffffffffL

    .local v9, "other$iv$iv":J
    const/4 v5, 0x0

    .line 784
    .local v5, "$i$f$and":I
    int-to-long v11, v4

    and-long v4, v11, v9

    .line 783
    .end local v4    # "$this$and$iv$iv":I
    .end local v5    # "$i$f$and":I
    .end local v9    # "other$iv$iv":J
    shl-long/2addr v4, v8

    .line 785
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv$iv":J
    const/4 v10, 0x0

    .line 784
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long v7, v11, v8

    .line 783
    .end local v7    # "$this$and$iv$iv":I
    .end local v8    # "other$iv$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v7

    .line 786
    goto/16 :goto_1

    .line 792
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 794
    .local v7, "data$iv":[B
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv$iv":J
    const/4 v12, 0x0

    .line 795
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 794
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 796
    add-int/lit8 v3, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv$iv":J
    const/4 v14, 0x0

    .line 795
    .local v14, "$i$f$and":I
    int-to-long v4, v9

    and-long/2addr v4, v12

    .line 796
    .end local v9    # "$this$and$iv$iv":B
    .end local v12    # "other$iv$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v9, 0x30

    shl-long/2addr v4, v9

    .line 794
    or-long/2addr v4, v10

    .line 797
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 795
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 797
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    .line 794
    or-long v3, v4, v10

    .line 798
    add-int/lit8 v5, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 795
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v9

    and-long v9, v13, v10

    .line 798
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v9, v8

    .line 794
    or-long/2addr v3, v8

    .line 799
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv$iv":J
    const/4 v11, 0x0

    .line 795
    .local v11, "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 799
    .end local v5    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x18

    shl-long/2addr v9, v5

    .line 794
    or-long/2addr v3, v9

    .line 800
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 795
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 800
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x10

    shl-long/2addr v8, v10

    .line 794
    or-long/2addr v3, v8

    .line 801
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v5, v7, v5

    .local v5, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 795
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v5

    and-long/2addr v9, v12

    .line 801
    .end local v5    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v5, 0x8

    shl-long/2addr v9, v5

    .line 794
    or-long/2addr v3, v9

    .line 802
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v5, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 795
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long v8, v12, v9

    .line 794
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v3, v8

    .line 803
    nop

    .line 813
    .local v3, "v$iv":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 815
    if-ne v5, v6, :cond_1

    .line 816
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 817
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 819
    :cond_1
    iput v5, v2, Lokio/Segment;->pos:I

    .line 822
    :goto_0
    move-wide v4, v3

    .line 267
    .end local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadLong":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "v$iv":J
    .end local v5    # "pos$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    :goto_1
    return-wide v4

    .line 774
    .restart local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadLong":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 261
    move-object v0, p0

    .local v0, "$this$commonReadShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 710
    .local v1, "$i$f$commonReadShort":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 712
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 713
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 714
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 717
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 718
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 719
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 718
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 719
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 718
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 720
    .local v4, "s$iv":I
    int-to-short v5, v4

    goto :goto_1

    .line 723
    .end local v4    # "s$iv":I
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 724
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 719
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 724
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 719
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 724
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 725
    .local v3, "s$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 727
    if-ne v9, v6, :cond_1

    .line 728
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 729
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 731
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 734
    :goto_0
    int-to-short v5, v3

    .line 261
    .end local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadShort":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "s$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v5

    .line 710
    .restart local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadShort":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 5
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 307
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_4

    .line 308
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 310
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 311
    .local v0, "s":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lokio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 313
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2

    .line 316
    :cond_2
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v2, v3, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v4

    .line 317
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v0, Lokio/Segment;->pos:I

    .line 318
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 320
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_3

    .line 321
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 322
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 325
    :cond_3
    return-object v1

    .line 307
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 658
    :cond_5
    const/4 v0, 0x0

    .line 306
    .local v0, "$i$a$-require-Buffer$readString$1":I
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "byteCount: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;

    const-string v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    invoke-static {p0, p1}, Lokio/internal/BufferKt;->commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 297
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 300
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 338
    move-object v0, p0

    .local v0, "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 988
    .local v1, "$i$f$commonReadUtf8CodePoint":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    .line 990
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .local v2, "b0$iv":B
    const/4 v3, 0x0

    .local v3, "codePoint$iv":I
    const/4 v4, 0x0

    .local v4, "byteCount$iv":I
    const/4 v5, 0x0

    .line 995
    .local v5, "min$iv":I
    nop

    .line 996
    const/16 v6, 0x80

    .local v6, "other$iv$iv":I
    move v7, v2

    .local v7, "$this$and$iv$iv":B
    const/4 v8, 0x0

    .line 997
    .local v8, "$i$f$and":I
    and-int/2addr v6, v7

    .line 996
    .end local v6    # "other$iv$iv":I
    .end local v7    # "$this$and$iv$iv":B
    .end local v8    # "$i$f$and":I
    const v7, 0xfffd

    if-nez v6, :cond_0

    .line 998
    const/16 v6, 0x7f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .local v8, "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .local v9, "$i$f$and":I
    and-int/2addr v6, v8

    .line 998
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    move v3, v6

    .line 999
    const/4 v4, 0x1

    .line 1000
    const/4 v5, 0x0

    goto :goto_0

    .line 1002
    :cond_0
    const/16 v6, 0xe0

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1002
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xc0

    if-ne v6, v8, :cond_1

    .line 1004
    const/16 v6, 0x1f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1004
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    move v3, v6

    .line 1005
    const/4 v4, 0x2

    .line 1006
    const/16 v5, 0x80

    goto :goto_0

    .line 1008
    :cond_1
    const/16 v6, 0xf0

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1008
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xe0

    if-ne v6, v8, :cond_2

    .line 1010
    const/16 v6, 0xf

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1010
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    move v3, v6

    .line 1011
    const/4 v4, 0x3

    .line 1012
    const/16 v5, 0x800

    goto :goto_0

    .line 1014
    :cond_2
    const/16 v6, 0xf8

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1014
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xf0

    if-ne v6, v8, :cond_a

    .line 1016
    const/4 v6, 0x7

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 997
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1016
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    move v3, v6

    .line 1017
    const/4 v4, 0x4

    .line 1018
    const/high16 v5, 0x10000

    .line 1027
    :goto_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    int-to-long v10, v4

    cmp-long v6, v8, v10

    if-ltz v6, :cond_9

    .line 1034
    const/4 v6, 0x1

    move v8, v6

    :goto_1
    if-ge v8, v4, :cond_4

    move v9, v8

    .local v9, "i$iv":I
    add-int/lit8 v8, v8, 0x1

    .line 1035
    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->getByte(J)B

    move-result v10

    .line 1036
    .local v10, "b$iv":B
    const/16 v11, 0xc0

    .local v11, "other$iv$iv":I
    move v12, v10

    .local v12, "$this$and$iv$iv":B
    const/4 v13, 0x0

    .line 997
    .local v13, "$i$f$and":I
    and-int/2addr v11, v12

    .line 1036
    .end local v11    # "other$iv$iv":I
    .end local v12    # "$this$and$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v11, v12, :cond_3

    .line 1038
    shl-int/lit8 v3, v3, 0x6

    .line 1039
    const/16 v11, 0x3f

    .restart local v11    # "other$iv$iv":I
    move v12, v10

    .restart local v12    # "$this$and$iv$iv":B
    const/4 v13, 0x0

    .line 997
    .restart local v13    # "$i$f$and":I
    and-int/2addr v11, v12

    .line 1039
    .end local v11    # "other$iv$iv":I
    .end local v12    # "$this$and$iv$iv":B
    .end local v13    # "$i$f$and":I
    or-int/2addr v3, v11

    goto :goto_1

    .line 1041
    :cond_3
    int-to-long v11, v9

    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->skip(J)V

    .line 1042
    goto :goto_4

    .line 1046
    .end local v9    # "i$iv":I
    .end local v10    # "b$iv":B
    :cond_4
    int-to-long v8, v4

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1048
    nop

    .line 1049
    const v8, 0x10ffff

    if-le v3, v8, :cond_5

    .line 1050
    goto :goto_3

    .line 1052
    :cond_5
    const v8, 0xd800

    const/4 v9, 0x0

    if-gt v8, v3, :cond_6

    const v8, 0xe000

    if-ge v3, v8, :cond_6

    goto :goto_2

    :cond_6
    move v6, v9

    :goto_2
    if-eqz v6, :cond_7

    .line 1053
    goto :goto_3

    .line 1055
    :cond_7
    if-ge v3, v5, :cond_8

    .line 1056
    goto :goto_3

    .line 1058
    :cond_8
    move v7, v3

    .line 1048
    :goto_3
    goto :goto_4

    .line 1028
    :cond_9
    new-instance v6, Ljava/io/EOFException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size < "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (to read code point prefixed 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lokio/-Util;->toHexString(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1022
    :cond_a
    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1023
    nop

    .line 338
    .end local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8CodePoint":I
    .end local v2    # "b0$iv":B
    .end local v3    # "codePoint$iv":I
    .end local v4    # "byteCount$iv":I
    .end local v5    # "min$iv":I
    :goto_4
    return v7

    .line 988
    .restart local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadUtf8CodePoint":I
    :cond_b
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 329
    move-object v0, p0

    .local v0, "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 963
    .local v1, "$i$f$commonReadUtf8Line":I
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v2

    .line 965
    .local v2, "newline$iv":J
    nop

    .line 966
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    invoke-static {v0, v2, v3}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 967
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 968
    :cond_1
    const/4 v4, 0x0

    .line 965
    :goto_0
    nop

    .line 329
    .end local v0    # "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8Line":I
    .end local v2    # "newline$iv":J
    return-object v4
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 332
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 18
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 335
    move-wide/from16 v0, p1

    move-object/from16 v8, p0

    .local v8, "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    const/4 v9, 0x0

    .line 969
    .local v9, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 971
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    const-wide/16 v10, 0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-long v2, v0, v10

    :goto_1
    move-wide v12, v2

    .line 972
    .local v12, "scanLength$iv":J
    const/16 v3, 0xa

    const-wide/16 v4, 0x0

    move-object v2, v8

    move-wide v6, v12

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v14

    .line 973
    .local v14, "newline$iv":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-eqz v2, :cond_2

    invoke-static {v8, v14, v15}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 974
    :cond_2
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-gez v2, :cond_3

    .line 975
    sub-long v2, v12, v10

    invoke-virtual {v8, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 976
    invoke-virtual {v8, v12, v13}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 978
    invoke-static {v8, v12, v13}, Lokio/internal/BufferKt;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v2

    .line 335
    .end local v8    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .end local v9    # "$i$f$commonReadUtf8LineStrict":I
    .end local v12    # "scanLength$iv":J
    .end local v14    # "newline$iv":J
    :goto_2
    return-object v2

    .line 980
    .restart local v8    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .restart local v9    # "$i$f$commonReadUtf8LineStrict":I
    .restart local v12    # "scanLength$iv":J
    .restart local v14    # "newline$iv":J
    :cond_3
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 981
    .local v3, "data$iv":Lokio/Buffer;
    const/16 v2, 0x20

    .local v2, "a$iv$iv":I
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v6

    .local v6, "b$iv$iv":J
    const/4 v10, 0x0

    .line 982
    .local v10, "$i$f$minOf":I
    int-to-long v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 981
    .end local v2    # "a$iv$iv":I
    .end local v6    # "b$iv$iv":J
    .end local v10    # "$i$f$minOf":I
    move-object v2, v8

    const-wide/16 v4, 0x0

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 983
    new-instance v2, Ljava/io/EOFException;

    .line 984
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\n not found: limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 985
    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 984
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 987
    nop

    .line 984
    const-string v5, " content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 987
    invoke-virtual {v3}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    .line 984
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2026

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 983
    invoke-direct {v2, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 970
    .end local v3    # "data$iv":Lokio/Buffer;
    .end local v12    # "scanLength$iv":J
    .end local v14    # "newline$iv":J
    :cond_4
    const/4 v2, 0x0

    .line 969
    .local v2, "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1$iv":I
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "limit < 0: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-BufferKt$commonReadUtf8LineStrict$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public request(J)Z
    .locals 2
    .param p1, "byteCount"    # J

    .line 116
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public require(J)V
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 114
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public select(Lokio/Options;)I
    .locals 6
    .param p1, "options"    # Lokio/Options;

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    move-object v0, p0

    .local v0, "$this$commonSelect$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 945
    .local v1, "$i$f$commonSelect":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lokio/internal/BufferKt;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v2

    .line 946
    .local v2, "index$iv":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    .line 949
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$external__okio__android_common__okio_lib()[Lokio/ByteString;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 950
    .local v3, "selectedSize$iv":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 951
    nop

    .line 289
    .end local v0    # "$this$commonSelect$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSelect":I
    .end local v2    # "index$iv":I
    .end local v3    # "selectedSize$iv":I
    :goto_0
    return v2
.end method

.method public final setSize$external__okio__android_common__okio_lib(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 81
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 510
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 513
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 516
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 374
    move-object v0, p0

    .local v0, "$this$commonSkip$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1093
    .local v1, "$i$f$commonSkip":I
    move-wide v2, p1

    .line 1094
    .local v2, "byteCount$iv":J
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1095
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_1

    .line 1097
    .local v4, "head$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    .local v5, "b$iv$iv":I
    const/4 v6, 0x0

    .line 1098
    .local v6, "$i$f$minOf":I
    int-to-long v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1097
    .end local v5    # "b$iv$iv":I
    .end local v6    # "$i$f$minOf":I
    long-to-int v5, v7

    .line 1099
    .local v5, "toSkip$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1100
    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1101
    iget v6, v4, Lokio/Segment;->pos:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->pos:I

    .line 1103
    iget v6, v4, Lokio/Segment;->pos:I

    iget v7, v4, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_0

    .line 1104
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1105
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v4    # "head$iv":Lokio/Segment;
    .end local v5    # "toSkip$iv":I
    goto :goto_0

    .line 1095
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 1108
    :cond_2
    nop

    .line 374
    .end local v0    # "$this$commonSkip$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSkip":I
    .end local v2    # "byteCount$iv":J
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 6

    .line 573
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1744
    .local v1, "$i$f$commonSnapshot":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1746
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    .line 573
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    return-object v0

    .line 1745
    .restart local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonSnapshot":I
    :cond_1
    const/4 v2, 0x0

    .line 1744
    .local v2, "$i$a$-check-BufferKt$commonSnapshot$1$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "size > Int.MAX_VALUE: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check-BufferKt$commonSnapshot$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 9
    .param p1, "byteCount"    # I

    .line 575
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1747
    .local v1, "$i$f$commonSnapshot":I
    if-nez p1, :cond_0

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    .line 1748
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    int-to-long v7, p1

    invoke-static/range {v3 .. v8}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1751
    const/4 v2, 0x0

    .line 1752
    .local v2, "offset$iv":I
    const/4 v3, 0x0

    .line 1753
    .local v3, "segmentCount$iv":I
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1754
    .local v4, "s$iv":Lokio/Segment;
    :goto_0
    if-ge v2, p1, :cond_2

    .line 1755
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    if-eq v5, v6, :cond_1

    .line 1758
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1759
    add-int/lit8 v3, v3, 0x1

    .line 1760
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1756
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "s.limit == s.pos"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1764
    :cond_2
    new-array v5, v3, [[B

    .line 1765
    .local v5, "segments$iv":[[B
    mul-int/lit8 v6, v3, 0x2

    new-array v6, v6, [I

    .line 1766
    .local v6, "directory$iv":[I
    const/4 v2, 0x0

    .line 1767
    const/4 v3, 0x0

    .line 1768
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1769
    :goto_1
    if-ge v2, p1, :cond_3

    .line 1770
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v4, Lokio/Segment;->data:[B

    aput-object v7, v5, v3

    .line 1771
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 1773
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v6, v3

    .line 1774
    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    add-int/2addr v7, v3

    iget v8, v4, Lokio/Segment;->pos:I

    aput v8, v6, v7

    .line 1775
    const/4 v7, 0x1

    iput-boolean v7, v4, Lokio/Segment;->shared:Z

    .line 1776
    add-int/lit8 v3, v3, 0x1

    .line 1777
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1780
    :cond_3
    new-instance v7, Lokio/SegmentedByteString;

    move-object v8, v5

    check-cast v8, [[B

    invoke-direct {v7, v8, v6}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v7, Lokio/ByteString;

    move-object v2, v7

    .line 575
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    .end local v2    # "offset$iv":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":Lokio/Segment;
    .end local v5    # "segments$iv":[[B
    .end local v6    # "directory$iv":[I
    :goto_2
    return-object v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 504
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;
    .locals 5
    .param p1, "minimumCapacity"    # I

    .line 461
    move-object v0, p0

    .local v0, "$this$commonWritableSegment$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1430
    .local v1, "$i$f$commonWritableSegment":I
    const/16 v2, 0x2000

    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 1432
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    .line 1433
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    .line 1434
    .local v2, "result$iv":Lokio/Segment;
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1435
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1436
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1437
    goto :goto_3

    .line 1440
    .end local v2    # "result$iv":Lokio/Segment;
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1441
    .local v3, "tail$iv":Lokio/Segment;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, p1

    if-gt v4, v2, :cond_3

    iget-boolean v2, v3, Lokio/Segment;->owner:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_2

    .line 1442
    :cond_3
    :goto_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 1444
    .end local v3    # "tail$iv":Lokio/Segment;
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    nop

    .line 461
    .end local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWritableSegment":I
    .end local v2    # "tail$iv":Lokio/Segment;
    :goto_3
    return-object v2

    .line 1431
    .restart local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWritableSegment":I
    :cond_4
    const/4 v2, 0x0

    .line 1430
    .local v2, "$i$a$-require-BufferKt$commonWritableSegment$1$iv":I
    nop

    .end local v2    # "$i$a$-require-BufferKt$commonWritableSegment$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unexpected capacity"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 419
    .local v0, "byteCount":I
    move v1, v0

    .line 420
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 421
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 423
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 424
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 426
    sub-int/2addr v1, v3

    .line 427
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 430
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 431
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 4
    .param p1, "byteString"    # Lokio/ByteString;

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    move-object v0, p0

    .line 1109
    .local v0, "$this$commonWrite_u24default$iv":Lokio/Buffer;
    nop

    .line 1111
    const/4 v1, 0x0

    .line 1109
    .local v1, "offset$iv":I
    nop

    .line 1112
    nop

    .line 1109
    nop

    .line 1112
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .line 1109
    .local v2, "byteCount$iv":I
    const/4 v3, 0x0

    .line 1114
    .local v3, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, v1, v2}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V

    .line 1115
    nop

    .line 376
    .end local v0    # "$this$commonWrite_u24default$iv":Lokio/Buffer;
    .end local v1    # "offset$iv":I
    .end local v2    # "byteCount$iv":I
    .end local v3    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/ByteString;II)Lokio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1116
    .local v1, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, p2, p3}, Lokio/ByteString;->write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V

    .line 1117
    nop

    .line 379
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/Buffer;
    .locals 8
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1284
    .local v1, "$i$f$commonWrite":I
    move-wide v2, p2

    .line 1285
    .local v2, "byteCount$iv":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 1286
    invoke-interface {p1, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1287
    .local v4, "read$iv":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1288
    sub-long/2addr v2, v4

    .end local v4    # "read$iv":J
    goto :goto_0

    .line 1287
    .restart local v4    # "read$iv":J
    :cond_0
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 1290
    .end local v4    # "read$iv":J
    :cond_1
    nop

    .line 439
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "byteCount$iv":J
    return-object v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 4
    .param p1, "source"    # [B

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1255
    .local v1, "$i$f$commonWrite":I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    .line 408
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 10
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1256
    .local v1, "$i$f$commonWrite":I
    move v2, p2

    .line 1257
    .local v2, "offset$iv":I
    array-length v3, p1

    int-to-long v4, v3

    int-to-long v6, v2

    int-to-long v8, p3

    invoke-static/range {v4 .. v9}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1259
    add-int v3, v2, p3

    .line 1260
    .local v3, "limit$iv":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1261
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v4

    .line 1263
    .local v4, "tail$iv":Lokio/Segment;
    sub-int v5, v3, v2

    iget v6, v4, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1264
    .local v5, "toCopy$iv":I
    nop

    .line 1265
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1266
    iget v7, v4, Lokio/Segment;->limit:I

    .line 1267
    nop

    .line 1268
    add-int v8, v2, v5

    .line 1264
    invoke-static {p1, v6, v7, v2, v8}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1271
    add-int/2addr v2, v5

    .line 1272
    iget v6, v4, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->limit:I

    .end local v4    # "tail$iv":Lokio/Segment;
    .end local v5    # "toCopy$iv":I
    goto :goto_0

    .line 1275
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1276
    nop

    .line 414
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "offset$iv":I
    .end local v3    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1
    .param p1, "byteString"    # Lokio/ByteString;

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 1
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Source;J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1445
    .local v1, "$i$f$commonWrite":I
    move-wide v6, p2

    .line 1446
    .local v6, "byteCount$iv":J
    const/4 v8, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    if-eqz v2, :cond_7

    .line 1448
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 1450
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    .line 1452
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 1453
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1454
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_3

    .line 1455
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v3, v3

    add-long/2addr v3, v6

    iget-boolean v5, v2, Lokio/Segment;->shared:Z

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    iget v5, v2, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v9, v5

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x2000

    cmp-long v3, v3, v9

    if-gtz v3, :cond_3

    .line 1458
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v2, v4}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1459
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1460
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1461
    goto :goto_5

    .line 1465
    :cond_3
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v4}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1470
    .end local v2    # "tail$iv":Lokio/Segment;
    :cond_4
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1471
    .local v2, "segmentToMove$iv":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 1472
    .local v3, "movedByteCount$iv":J
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1473
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_5

    .line 1474
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1475
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1476
    iget-object v5, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1478
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 1479
    .local v5, "tail$iv":Lokio/Segment;
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v5

    .line 1480
    invoke-virtual {v5}, Lokio/Segment;->compact()V

    .line 1482
    .end local v5    # "tail$iv":Lokio/Segment;
    :goto_4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p1, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1483
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    add-long/2addr v9, v3

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1484
    sub-long/2addr v6, v3

    .end local v2    # "segmentToMove$iv":Lokio/Segment;
    .end local v3    # "movedByteCount$iv":J
    goto/16 :goto_1

    .line 1486
    :cond_6
    nop

    .line 463
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v6    # "byteCount$iv":J
    :goto_5
    return-void

    .line 1447
    .restart local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWrite":I
    .restart local v6    # "byteCount$iv":J
    :cond_7
    const/4 v2, 0x0

    .line 1446
    .local v2, "$i$a$-require-BufferKt$commonWrite$1$iv":I
    nop

    .end local v2    # "$i$a$-require-BufferKt$commonWrite$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "source == this"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeAll(Lokio/Source;)J
    .locals 8
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    move-object v0, p0

    .local v0, "$this$commonWriteAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1277
    .local v1, "$i$f$commonWriteAll":I
    const-wide/16 v2, 0x0

    .line 1278
    .local v2, "totalBytesRead$iv":J
    :goto_0
    nop

    .line 1279
    const-wide/16 v4, 0x2000

    invoke-interface {p1, v0, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1280
    .local v4, "readCount$iv":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 1283
    .end local v4    # "readCount$iv":J
    nop

    .line 435
    .end local v0    # "$this$commonWriteAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteAll":I
    .end local v2    # "totalBytesRead$iv":J
    return-wide v2

    .line 1281
    .restart local v0    # "$this$commonWriteAll$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWriteAll":I
    .restart local v2    # "totalBytesRead$iv":J
    .restart local v4    # "readCount$iv":J
    :cond_0
    add-long/2addr v2, v4

    .end local v4    # "readCount$iv":J
    goto :goto_0
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 7
    .param p1, "b"    # I

    .line 441
    move-object v0, p0

    .local v0, "$this$commonWriteByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1291
    .local v1, "$i$f$commonWriteByte":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1292
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->limit:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lokio/Segment;->limit:I

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    .line 1293
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1294
    nop

    .line 441
    .end local v0    # "$this$commonWriteByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteByte":I
    .end local v2    # "tail$iv":Lokio/Segment;
    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "b"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 16
    .param p1, "v"    # J

    .line 455
    move-object/from16 v0, p0

    .local v0, "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1327
    .local v1, "$i$f$commonWriteDecimalLong":I
    move-wide/from16 v2, p1

    .line 1328
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1330
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_2

    .line 1333
    :cond_0
    const/4 v6, 0x0

    .line 1334
    .local v6, "negative$iv":Z
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 1335
    neg-long v2, v2

    .line 1336
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 1337
    const-string v4, "-9223372036854775808"

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_2

    .line 1339
    :cond_1
    const/4 v6, 0x1

    .line 1344
    :cond_2
    const-wide/32 v7, 0x5f5e100

    cmp-long v7, v2, v7

    const/16 v8, 0xa

    if-gez v7, :cond_a

    .line 1345
    const-wide/16 v9, 0x2710

    cmp-long v7, v2, v9

    if-gez v7, :cond_6

    .line 1346
    const-wide/16 v9, 0x64

    cmp-long v7, v2, v9

    if-gez v7, :cond_4

    .line 1347
    const-wide/16 v9, 0xa

    cmp-long v7, v2, v9

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1348
    :cond_3
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 1349
    :cond_4
    const-wide/16 v9, 0x3e8

    cmp-long v7, v2, v9

    if-gez v7, :cond_5

    const/4 v7, 0x3

    goto/16 :goto_0

    .line 1350
    :cond_5
    const/4 v7, 0x4

    goto/16 :goto_0

    .line 1351
    :cond_6
    const-wide/32 v9, 0xf4240

    cmp-long v7, v2, v9

    if-gez v7, :cond_8

    .line 1352
    const-wide/32 v9, 0x186a0

    cmp-long v7, v2, v9

    if-gez v7, :cond_7

    const/4 v7, 0x5

    goto/16 :goto_0

    .line 1353
    :cond_7
    const/4 v7, 0x6

    goto/16 :goto_0

    .line 1354
    :cond_8
    const-wide/32 v9, 0x989680

    cmp-long v7, v2, v9

    if-gez v7, :cond_9

    const/4 v7, 0x7

    goto/16 :goto_0

    .line 1355
    :cond_9
    const/16 v7, 0x8

    goto/16 :goto_0

    .line 1356
    :cond_a
    const-wide v9, 0xe8d4a51000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_e

    .line 1357
    const-wide v9, 0x2540be400L

    cmp-long v7, v2, v9

    if-gez v7, :cond_c

    .line 1358
    const-wide/32 v9, 0x3b9aca00

    cmp-long v7, v2, v9

    if-gez v7, :cond_b

    const/16 v7, 0x9

    goto :goto_0

    .line 1359
    :cond_b
    move v7, v8

    goto :goto_0

    .line 1360
    :cond_c
    const-wide v9, 0x174876e800L

    cmp-long v7, v2, v9

    if-gez v7, :cond_d

    const/16 v7, 0xb

    goto :goto_0

    .line 1361
    :cond_d
    const/16 v7, 0xc

    goto :goto_0

    .line 1362
    :cond_e
    const-wide v9, 0x38d7ea4c68000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_11

    .line 1363
    const-wide v9, 0x9184e72a000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_f

    const/16 v7, 0xd

    goto :goto_0

    .line 1364
    :cond_f
    const-wide v9, 0x5af3107a4000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_10

    const/16 v7, 0xe

    goto :goto_0

    .line 1365
    :cond_10
    const/16 v7, 0xf

    goto :goto_0

    .line 1366
    :cond_11
    const-wide v9, 0x16345785d8a0000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_13

    .line 1367
    const-wide v9, 0x2386f26fc10000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_12

    const/16 v7, 0x10

    goto :goto_0

    .line 1368
    :cond_12
    const/16 v7, 0x11

    goto :goto_0

    .line 1369
    :cond_13
    const-wide v9, 0xde0b6b3a7640000L

    cmp-long v7, v2, v9

    if-gez v7, :cond_14

    const/16 v7, 0x12

    goto :goto_0

    .line 1370
    :cond_14
    const/16 v7, 0x13

    .line 1344
    :goto_0
    nop

    .line 1343
    nop

    .line 1371
    .local v7, "width$iv":I
    if-eqz v6, :cond_15

    .line 1372
    add-int/lit8 v7, v7, 0x1

    .line 1375
    :cond_15
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v9

    .line 1376
    .local v9, "tail$iv":Lokio/Segment;
    iget-object v10, v9, Lokio/Segment;->data:[B

    .line 1377
    .local v10, "data$iv":[B
    iget v11, v9, Lokio/Segment;->limit:I

    add-int/2addr v11, v7

    .line 1378
    .local v11, "pos$iv":I
    :goto_1
    cmp-long v12, v2, v4

    if-eqz v12, :cond_16

    .line 1379
    int-to-long v12, v8

    rem-long v14, v2, v12

    long-to-int v14, v14

    .line 1380
    .local v14, "digit$iv":I
    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v15

    aget-byte v15, v15, v14

    aput-byte v15, v10, v11

    .line 1381
    div-long/2addr v2, v12

    .end local v14    # "digit$iv":I
    goto :goto_1

    .line 1383
    :cond_16
    if-eqz v6, :cond_17

    .line 1384
    add-int/lit8 v11, v11, -0x1

    const/16 v4, 0x2d

    aput-byte v4, v10, v11

    .line 1387
    :cond_17
    iget v4, v9, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    iput v4, v9, Lokio/Segment;->limit:I

    .line 1388
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v12, v7

    add-long/2addr v4, v12

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1389
    nop

    .line 455
    .end local v0    # "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteDecimalLong":I
    .end local v2    # "v$iv":J
    .end local v6    # "negative$iv":Z
    .end local v7    # "width$iv":I
    .end local v9    # "tail$iv":Lokio/Segment;
    .end local v10    # "data$iv":[B
    .end local v11    # "pos$iv":I
    :goto_2
    return-object v0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 16
    .param p1, "v"    # J

    .line 458
    move-object/from16 v0, p0

    .local v0, "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1390
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    move-wide/from16 v2, p1

    .line 1391
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 1393
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1398
    :cond_0
    move-wide v4, v2

    .line 1399
    .local v4, "x$iv":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 1400
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 1401
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 1402
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 1403
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 1404
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 1408
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 1409
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 1410
    .end local v4    # "x$iv":J
    .local v12, "x$iv":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 1411
    .end local v12    # "x$iv":J
    .restart local v4    # "x$iv":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 1412
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 1413
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 1416
    .end local v4    # "x$iv":J
    .restart local v12    # "x$iv":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v4, v4

    .line 1418
    .local v4, "width$iv":I
    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 1419
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v7, v5, Lokio/Segment;->data:[B

    .line 1420
    .local v7, "data$iv":[B
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    sub-int/2addr v9, v6

    .line 1421
    .local v9, "pos$iv":I
    iget v6, v5, Lokio/Segment;->limit:I

    .line 1422
    .local v6, "start$iv":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 1423
    invoke-static {}, Lokio/internal/BufferKt;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 1424
    ushr-long/2addr v2, v8

    .line 1425
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 1427
    :cond_1
    iget v8, v5, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    iput v8, v5, Lokio/Segment;->limit:I

    .line 1428
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v4

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1429
    nop

    .line 458
    .end local v0    # "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteHexadecimalUnsignedLong":I
    .end local v2    # "v$iv":J
    .end local v4    # "width$iv":I
    .end local v5    # "tail$iv":Lokio/Segment;
    .end local v6    # "start$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    .end local v12    # "x$iv":J
    :goto_1
    return-object v0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 9
    .param p1, "i"    # I

    .line 447
    move-object v0, p0

    .local v0, "$this$commonWriteInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1303
    .local v1, "$i$f$commonWriteInt":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1304
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1305
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1306
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1307
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1308
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1309
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1310
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1311
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1312
    nop

    .line 447
    .end local v0    # "$this$commonWriteInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteInt":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "i"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I

    .line 449
    invoke-static {p1}, Lokio/-Util;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "i"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J

    .line 451
    move-object v0, p0

    .local v0, "$this$commonWriteLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1313
    .local v1, "$i$f$commonWriteLong":I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v3

    .line 1314
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 1315
    .local v4, "data$iv":[B
    iget v5, v3, Lokio/Segment;->limit:I

    .line 1316
    .local v5, "limit$iv":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .local v6, "limit$iv":I
    const/16 v7, 0x38

    ushr-long v7, p1, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1317
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x30

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1318
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x28

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1319
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x20

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1320
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x18

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 1321
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x10

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 1322
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    ushr-long v7, p1, v2

    and-long/2addr v7, v9

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 1323
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "limit$iv":I
    .local v2, "limit$iv":I
    and-long v7, p1, v9

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 1324
    iput v2, v3, Lokio/Segment;->limit:I

    .line 1325
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1326
    nop

    .line 451
    .end local v0    # "$this$commonWriteLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteLong":I
    .end local v2    # "limit$iv":I
    .end local v3    # "tail$iv":Lokio/Segment;
    .end local v4    # "data$iv":[B
    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 2
    .param p1, "v"    # J

    .line 453
    invoke-static {p1, p2}, Lokio/-Util;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 9
    .param p1, "s"    # I

    .line 443
    move-object v0, p0

    .local v0, "$this$commonWriteShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1295
    .local v1, "$i$f$commonWriteShort":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v2

    .line 1296
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1297
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1298
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1299
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1300
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1301
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1302
    nop

    .line 443
    .end local v0    # "$this$commonWriteShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteShort":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "s"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I

    .line 445
    int-to-short v0, p1

    invoke-static {v0}, Lokio/-Util;->reverseBytes(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "s"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 401
    if-lt p3, p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 403
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 404
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    .local v0, "data":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1

    .line 658
    .end local v0    # "data":[B
    :cond_4
    const/4 v0, 0x0

    .line 402
    .local v0, "$i$a$-require-Buffer$writeString$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_5
    const/4 v0, 0x0

    .line 401
    .local v0, "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_6
    const/4 v0, 0x0

    .line 400
    .local v0, "$i$a$-require-Buffer$writeString$1":I
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "beginIndex < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    nop

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 391
    nop

    .line 389
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    move-wide v4, p2

    .line 193
    .local v4, "byteCount":J
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 195
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 196
    .local v0, "s":Lokio/Segment;
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_1

    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .local v1, "b$iv":I
    const/4 v2, 0x0

    .line 657
    .local v2, "$i$f$minOf":I
    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 197
    .end local v1    # "b$iv":I
    .end local v2    # "$i$f$minOf":I
    long-to-int v1, v6

    .line 198
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 201
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v6, v1

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 202
    int-to-long v2, v1

    sub-long/2addr v4, v2

    .line 204
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 205
    move-object v2, v0

    .line 206
    .local v2, "toRecycle":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    .line 207
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 208
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v1    # "toCopy":I
    .end local v2    # "toRecycle":Lokio/Segment;
    goto :goto_0

    .line 212
    :cond_1
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "string"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    move-object/from16 v3, p0

    .local v3, "$this$commonWriteUtf8$iv":Lokio/Buffer;
    const/4 v4, 0x0

    .line 1118
    .local v4, "$i$f$commonWriteUtf8":I
    const/4 v6, 0x1

    if-ltz v1, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_10

    .line 1120
    if-lt v2, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    .line 1121
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_e

    .line 1124
    move/from16 v7, p2

    .line 1125
    .local v7, "i$iv":I
    :goto_3
    if-ge v7, v2, :cond_d

    .line 1126
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1128
    .local v8, "c$iv":I
    nop

    .line 1129
    const/16 v9, 0x80

    if-ge v8, v9, :cond_5

    .line 1130
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v10

    .line 1131
    .local v10, "tail$iv":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 1132
    .local v11, "data$iv":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 1133
    .local v12, "segmentOffset$iv":I
    rsub-int v13, v12, 0x2000

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1136
    .local v13, "runLimit$iv":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i$iv":I
    .local v14, "i$iv":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    .line 1140
    .end local v14    # "i$iv":I
    .restart local v7    # "i$iv":I
    :goto_4
    if-ge v7, v13, :cond_4

    .line 1141
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1142
    if-lt v8, v9, :cond_3

    goto :goto_5

    .line 1143
    :cond_3
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i$iv":I
    .restart local v14    # "i$iv":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    goto :goto_4

    .line 1146
    .end local v14    # "i$iv":I
    .restart local v7    # "i$iv":I
    :cond_4
    :goto_5
    add-int v9, v7, v12

    iget v14, v10, Lokio/Segment;->limit:I

    sub-int/2addr v9, v14

    .line 1147
    .local v9, "runSize$iv":I
    iget v14, v10, Lokio/Segment;->limit:I

    add-int/2addr v14, v9

    iput v14, v10, Lokio/Segment;->limit:I

    .line 1148
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v14

    int-to-long v5, v9

    add-long/2addr v14, v5

    invoke-virtual {v3, v14, v15}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    const/4 v6, 0x1

    .end local v9    # "runSize$iv":I
    .end local v10    # "tail$iv":Lokio/Segment;
    .end local v11    # "data$iv":[B
    .end local v12    # "segmentOffset$iv":I
    .end local v13    # "runLimit$iv":I
    goto :goto_3

    .line 1151
    :cond_5
    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_6

    .line 1153
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v5

    .line 1155
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1156
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 1158
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 1159
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1160
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    .end local v5    # "tail$iv":Lokio/Segment;
    goto :goto_3

    .line 1163
    :cond_6
    const v5, 0xd800

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_c

    const v5, 0xdfff

    if-le v8, v5, :cond_7

    goto/16 :goto_9

    .line 1180
    :cond_7
    add-int/lit8 v5, v7, 0x1

    if-ge v5, v2, :cond_8

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    .line 1181
    .local v5, "low$iv":I
    :goto_6
    const v12, 0xdbff

    if-gt v8, v12, :cond_b

    const v12, 0xdc00

    if-gt v12, v5, :cond_9

    const v12, 0xe000

    if-ge v5, v12, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    :cond_9
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_a

    goto :goto_8

    .line 1188
    :cond_a
    const/high16 v12, 0x10000

    and-int/lit16 v13, v8, 0x3ff

    shl-int/lit8 v13, v13, 0xa

    and-int/lit16 v14, v5, 0x3ff

    or-int/2addr v13, v14

    add-int/2addr v13, v12

    .line 1191
    .local v13, "codePoint$iv":I
    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v14

    .line 1193
    .local v14, "tail$iv":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    shr-int/lit8 v10, v13, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    aput-byte v10, v15, v12

    .line 1194
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    const/4 v15, 0x1

    add-int/2addr v12, v15

    shr-int/lit8 v15, v13, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v10, v12

    .line 1195
    iget-object v10, v14, Lokio/Segment;->data:[B

    iget v12, v14, Lokio/Segment;->limit:I

    add-int/2addr v12, v6

    shr-int/lit8 v6, v13, 0x6

    and-int/2addr v6, v11

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v10, v12

    .line 1196
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v10, v14, Lokio/Segment;->limit:I

    const/4 v11, 0x3

    add-int/2addr v10, v11

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v6, v10

    .line 1198
    iget v6, v14, Lokio/Segment;->limit:I

    const/4 v9, 0x4

    add-int/2addr v6, v9

    iput v6, v14, Lokio/Segment;->limit:I

    .line 1199
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x4

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1200
    nop

    .end local v5    # "low$iv":I
    .end local v8    # "c$iv":I
    .end local v13    # "codePoint$iv":I
    .end local v14    # "tail$iv":Lokio/Segment;
    add-int/lit8 v7, v7, 0x2

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1182
    .restart local v5    # "low$iv":I
    .restart local v8    # "c$iv":I
    :cond_b
    :goto_8
    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1183
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1165
    .end local v5    # "low$iv":I
    :cond_c
    :goto_9
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v10

    .line 1167
    .restart local v10    # "tail$iv":Lokio/Segment;
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 1168
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v12, v10, Lokio/Segment;->limit:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    shr-int/lit8 v14, v8, 0x6

    and-int/2addr v11, v14

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v5, v12

    .line 1169
    iget-object v5, v10, Lokio/Segment;->data:[B

    iget v11, v10, Lokio/Segment;->limit:I

    add-int/2addr v11, v6

    and-int/lit8 v6, v8, 0x3f

    or-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 1171
    iget v5, v10, Lokio/Segment;->limit:I

    const/4 v6, 0x3

    add-int/2addr v5, v6

    iput v5, v10, Lokio/Segment;->limit:I

    .line 1172
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v11, 0x3

    add-long/2addr v5, v11

    invoke-virtual {v3, v5, v6}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1173
    add-int/lit8 v7, v7, 0x1

    move v6, v13

    .end local v10    # "tail$iv":Lokio/Segment;
    goto/16 :goto_3

    .line 1206
    .end local v8    # "c$iv":I
    :cond_d
    nop

    .line 384
    .end local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .end local v4    # "$i$f$commonWriteUtf8":I
    .end local v7    # "i$iv":I
    return-object v3

    .line 1119
    .restart local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .restart local v4    # "$i$f$commonWriteUtf8":I
    :cond_e
    const/4 v5, 0x0

    .line 1121
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$3$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > string.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$3$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1119
    :cond_f
    const/4 v5, 0x0

    .line 1120
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1119
    :cond_10
    const/4 v5, 0x0

    .line 1118
    .local v5, "$i$a$-require-BufferKt$commonWriteUtf8$1$iv":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "beginIndex < 0: "

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require-BufferKt$commonWriteUtf8$1$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 12
    .param p1, "codePoint"    # I

    .line 387
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1207
    .local v1, "$i$f$commonWriteUtf8CodePoint":I
    nop

    .line 1208
    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    .line 1210
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1212
    :cond_0
    const/16 v3, 0x800

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ge p1, v3, :cond_1

    .line 1214
    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v3

    .line 1216
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v6, v3, Lokio/Segment;->data:[B

    iget v7, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v8, p1, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1217
    iget-object v6, v3, Lokio/Segment;->data:[B

    iget v7, v3, Lokio/Segment;->limit:I

    add-int/2addr v7, v4

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 1219
    iget v2, v3, Lokio/Segment;->limit:I

    add-int/2addr v2, v5

    iput v2, v3, Lokio/Segment;->limit:I

    .line 1220
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .end local v3    # "tail$iv":Lokio/Segment;
    goto/16 :goto_0

    .line 1222
    :cond_1
    const v3, 0xd800

    const/4 v6, 0x0

    if-gt v3, p1, :cond_2

    const v3, 0xe000

    if-ge p1, v3, :cond_2

    move v6, v4

    :cond_2
    const/16 v3, 0x3f

    if-eqz v6, :cond_3

    .line 1224
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1226
    :cond_3
    const/high16 v6, 0x10000

    const/4 v7, 0x3

    if-ge p1, v6, :cond_4

    .line 1228
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v6

    .line 1230
    .local v6, "tail$iv":Lokio/Segment;
    iget-object v8, v6, Lokio/Segment;->data:[B

    iget v9, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v10, p1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1231
    iget-object v8, v6, Lokio/Segment;->data:[B

    iget v9, v6, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v8, v9

    .line 1232
    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->limit:I

    add-int/2addr v4, v5

    and-int/lit8 v5, p1, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1234
    iget v2, v6, Lokio/Segment;->limit:I

    add-int/2addr v2, v7

    iput v2, v6, Lokio/Segment;->limit:I

    .line 1235
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .end local v6    # "tail$iv":Lokio/Segment;
    goto :goto_0

    .line 1237
    :cond_4
    const v6, 0x10ffff

    if-gt p1, v6, :cond_5

    .line 1239
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$external__okio__android_common__okio_lib(I)Lokio/Segment;

    move-result-object v8

    .line 1241
    .local v8, "tail$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    iget v10, v8, Lokio/Segment;->limit:I

    shr-int/lit8 v11, p1, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 1242
    iget-object v9, v8, Lokio/Segment;->data:[B

    iget v10, v8, Lokio/Segment;->limit:I

    add-int/2addr v10, v4

    shr-int/lit8 v4, p1, 0xc

    and-int/2addr v4, v3

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v9, v10

    .line 1243
    iget-object v4, v8, Lokio/Segment;->data:[B

    iget v9, v8, Lokio/Segment;->limit:I

    add-int/2addr v9, v5

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v9

    .line 1244
    iget-object v3, v8, Lokio/Segment;->data:[B

    iget v4, v8, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    and-int/lit8 v5, p1, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1246
    iget v2, v8, Lokio/Segment;->limit:I

    add-int/2addr v2, v6

    iput v2, v8, Lokio/Segment;->limit:I

    .line 1247
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->setSize$external__okio__android_common__okio_lib(J)V

    .line 1254
    .end local v8    # "tail$iv":Lokio/Segment;
    :goto_0
    nop

    .line 387
    .end local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteUtf8CodePoint":I
    return-object v0

    .line 1250
    .restart local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWriteUtf8CodePoint":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/-Util;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unexpected code point: 0x"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "codePoint"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method
