.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/ByteStringKt\n+ 3 -Util.kt\nokio/-Util\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,355:1\n39#2,7:356\n49#2:363\n52#2:364\n59#2,4:365\n63#2:370\n65#2:372\n71#2,23:373\n99#2,23:396\n126#2:419\n127#2,9:421\n139#2:430\n142#2:431\n145#2:432\n148#2:433\n156#2:434\n166#2,3:435\n165#2:438\n174#2:439\n178#2:440\n182#2:441\n186#2:442\n190#2,7:443\n203#2:450\n207#2,7:451\n218#2,4:458\n227#2,5:462\n236#2,6:467\n242#2,9:474\n304#2,8:483\n126#2:491\n127#2,9:493\n315#2,9:502\n68#3:369\n74#3:371\n74#3:473\n1#4:420\n1#4:492\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n65#1:356,7\n70#1:363\n107#1:364\n109#1:365,4\n109#1:370\n109#1:372\n111#1:373,23\n113#1:396,23\n117#1:419\n117#1:421,9\n119#1:430\n127#1:431\n129#1:432\n131#1:433\n150#1:434\n157#1:435,3\n157#1:438\n159#1:439\n161#1:440\n163#1:441\n165#1:442\n171#1:443,7\n174#1:450\n177#1:451,7\n179#1:458,4\n181#1:462,5\n183#1:467,6\n183#1:474,9\n185#1:483,8\n185#1:491\n185#1:493,9\n185#1:502,9\n109#1:369\n109#1:371\n183#1:473\n117#1:420\n185#1:492\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u001a\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 Z2\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001ZB\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0000H\u0096\u0002J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0000J\u0013\u0010!\u001a\u00020\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0002\u0008&J\u0015\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\'J\r\u0010(\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008)J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010*\u001a\u00020\u0010H\u0016J\u001d\u0010+\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0000H\u0010\u00a2\u0006\u0002\u0008-J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u0010\u0010/\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u0010\u00100\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0000H\u0016J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0007J\r\u00103\u001a\u00020\u0004H\u0010\u00a2\u0006\u0002\u00084J\u0015\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u00087J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u00102\u001a\u00020\tH\u0007J\u0006\u00109\u001a\u00020\u0000J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\u0006\u0010B\u001a\u00020\u0000J\u0006\u0010C\u001a\u00020\u0000J\u0006\u0010D\u001a\u00020\u0000J\r\u0010\u000e\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008EJ\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0004J\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0000J\u0010\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u001c\u0010K\u001a\u00020\u00002\u0008\u0008\u0002\u0010L\u001a\u00020\t2\u0008\u0008\u0002\u0010M\u001a\u00020\tH\u0017J\u0008\u0010N\u001a\u00020\u0000H\u0016J\u0008\u0010O\u001a\u00020\u0000H\u0016J\u0008\u0010P\u001a\u00020\u0004H\u0016J\u0008\u0010Q\u001a\u00020\u0010H\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TH\u0016J%\u0010R\u001a\u00020?2\u0006\u0010U\u001a\u00020V2\u0006\u0010;\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0010\u00a2\u0006\u0002\u0008WJ\u0010\u0010X\u001a\u00020?2\u0006\u0010S\u001a\u00020YH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006["
    }
    d2 = {
        "Lokio/ByteString;",
        "Ljava/io/Serializable;",
        "",
        "data",
        "",
        "([B)V",
        "getData$external__okio__android_common__okio_lib",
        "()[B",
        "hashCode",
        "",
        "getHashCode$external__okio__android_common__okio_lib",
        "()I",
        "setHashCode$external__okio__android_common__okio_lib",
        "(I)V",
        "size",
        "utf8",
        "",
        "getUtf8$external__okio__android_common__okio_lib",
        "()Ljava/lang/String;",
        "setUtf8$external__okio__android_common__okio_lib",
        "(Ljava/lang/String;)V",
        "asByteBuffer",
        "Ljava/nio/ByteBuffer;",
        "base64",
        "base64Url",
        "compareTo",
        "other",
        "digest",
        "algorithm",
        "digest$external__okio__android_common__okio_lib",
        "endsWith",
        "",
        "suffix",
        "equals",
        "",
        "get",
        "",
        "index",
        "getByte",
        "-deprecated_getByte",
        "getSize",
        "getSize$external__okio__android_common__okio_lib",
        "hex",
        "hmac",
        "key",
        "hmac$external__okio__android_common__okio_lib",
        "hmacSha1",
        "hmacSha256",
        "hmacSha512",
        "indexOf",
        "fromIndex",
        "internalArray",
        "internalArray$external__okio__android_common__okio_lib",
        "internalGet",
        "pos",
        "internalGet$external__okio__android_common__okio_lib",
        "lastIndexOf",
        "md5",
        "rangeEquals",
        "offset",
        "otherOffset",
        "byteCount",
        "readObject",
        "",
        "in",
        "Ljava/io/ObjectInputStream;",
        "sha1",
        "sha256",
        "sha512",
        "-deprecated_size",
        "startsWith",
        "prefix",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "substring",
        "beginIndex",
        "endIndex",
        "toAsciiLowercase",
        "toAsciiUppercase",
        "toByteArray",
        "toString",
        "write",
        "out",
        "Ljava/io/OutputStream;",
        "buffer",
        "Lokio/Buffer;",
        "write$external__okio__android_common__okio_lib",
        "writeObject",
        "Ljava/io/ObjectOutputStream;",
        "Companion",
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


# static fields
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field private transient hashCode:I

.field private transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokio/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 222
    new-instance v0, Lokio/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 59
    return-void
.end method

.method public static final decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/ByteString$Companion;->encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 0

    .line 168
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 165
    const/4 p2, 0x0

    .line 168
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf(Lokio/ByteString;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 0

    .line 171
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 167
    const/4 p2, 0x0

    .line 171
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: indexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I
    .locals 0

    .line 174
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 168
    nop

    .line 174
    nop

    .line 168
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p2

    .line 174
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf(Lokio/ByteString;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I
    .locals 0

    .line 177
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 171
    nop

    .line 177
    nop

    .line 171
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p2

    .line 177
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: lastIndexOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->of(Ljava/nio/ByteBuffer;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs of([B)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final of([BII)Lokio/ByteString;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lokio/ByteString$Companion;->of([BII)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static final read(Ljava/io/InputStream;I)Lokio/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0, p1}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 190
    .local v0, "dataLength":I
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    move-object v2, p1

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v1, v2, v0}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object v1

    .local v1, "byteString":Lokio/ByteString;
    const-class v2, Lokio/ByteString;

    .line 191
    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 192
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    iget-object v3, v1, Lokio/ByteString;->data:[B

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public static synthetic substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 116
    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 100
    const/4 p1, 0x0

    .line 116
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 101
    nop

    .line 116
    nop

    .line 101
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p2

    .line 116
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: substring"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 200
    return-void
.end method


# virtual methods
.method public final -deprecated_getByte(I)B
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lokio/ByteString;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .line 216
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    return v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 134
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(data).asReadOnlyBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public base64()Ljava/lang/String;
    .locals 5

    .line 70
    move-object v0, p0

    .local v0, "$this$commonBase64$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 363
    .local v1, "$i$f$commonBase64":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .end local v0    # "$this$commonBase64$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonBase64":I
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 4

    .line 107
    move-object v0, p0

    .local v0, "$this$commonBase64Url$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 364
    .local v1, "$i$f$commonBase64Url":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v3

    invoke-static {v2, v3}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v0

    .line 107
    .end local v0    # "$this$commonBase64Url$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonBase64Url":I
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 58
    move-object v0, p1

    check-cast v0, Lokio/ByteString;

    invoke-virtual {p0, v0}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lokio/ByteString;)I
    .locals 12
    .param p1, "other"    # Lokio/ByteString;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    move-object v0, p0

    .local v0, "$this$commonCompareTo$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 467
    .local v1, "$i$f$commonCompareTo":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    .line 468
    .local v2, "sizeA$iv":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    .line 469
    .local v3, "sizeB$iv":I
    const/4 v4, 0x0

    .line 470
    .local v4, "i$iv":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 471
    .local v5, "size$iv":I
    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    .line 472
    invoke-virtual {v0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .local v8, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 473
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 472
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    nop

    .line 474
    .local v8, "byteA$iv":I
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v9

    .local v9, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 473
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .line 474
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    nop

    .line 475
    .local v9, "byteB$iv":I
    if-ne v8, v9, :cond_0

    .line 476
    add-int/lit8 v4, v4, 0x1

    .line 477
    goto :goto_0

    .line 479
    :cond_0
    if-ge v8, v9, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    goto :goto_1

    .line 481
    .end local v8    # "byteA$iv":I
    .end local v9    # "byteB$iv":I
    :cond_2
    if-ne v2, v3, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    .line 482
    :cond_3
    if-ge v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    .line 183
    .end local v0    # "$this$commonCompareTo$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonCompareTo":I
    .end local v2    # "sizeA$iv":I
    .end local v3    # "sizeB$iv":I
    .end local v4    # "i$iv":I
    .end local v5    # "size$iv":I
    :goto_1
    return v6
.end method

.method public digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "$this$digest_u24lambda_u2d0":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 82
    .local v1, "$i$a$-run-ByteString$digest$digestBytes$1":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 83
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 81
    .end local v0    # "$this$digest_u24lambda_u2d0":Ljava/security/MessageDigest;
    .end local v1    # "$i$a$-run-ByteString$digest$digestBytes$1":I
    nop

    .line 85
    .local v0, "digestBytes":[B
    new-instance v1, Lokio/ByteString;

    const-string v2, "digestBytes"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .locals 5
    .param p1, "suffix"    # Lokio/ByteString;

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    move-object v0, p0

    .local v0, "$this$commonEndsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 441
    .local v1, "$i$f$commonEndsWith":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v4, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    .line 163
    .end local v0    # "$this$commonEndsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEndsWith":I
    return v0
.end method

.method public final endsWith([B)Z
    .locals 5
    .param p1, "suffix"    # [B

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p0

    .local v0, "$this$commonEndsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 442
    .local v1, "$i$f$commonEndsWith":I
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v2

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, p1, v4, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 165
    .end local v0    # "$this$commonEndsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEndsWith":I
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 179
    move-object v0, p0

    .local v0, "$this$commonEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 458
    .local v1, "$i$f$commonEquals":I
    nop

    .line 459
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    instance-of v4, p1, Lokio/ByteString;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v5

    array-length v5, v5

    if-ne v4, v5, :cond_1

    move-object v4, p1

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v4, v3, v5, v3, v6}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 461
    :cond_2
    move v2, v3

    .line 458
    :goto_0
    nop

    .line 179
    .end local v0    # "$this$commonEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonEquals":I
    return v2
.end method

.method public final getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 122
    invoke-virtual {p0, p1}, Lokio/ByteString;->internalGet$external__okio__android_common__okio_lib(I)B

    move-result v0

    return v0
.end method

.method public final getData$external__okio__android_common__okio_lib()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lokio/ByteString;->data:[B

    return-object v0
.end method

.method public final getHashCode$external__okio__android_common__okio_lib()I
    .locals 1

    .line 62
    iget v0, p0, Lokio/ByteString;->hashCode:I

    return v0
.end method

.method public getSize$external__okio__android_common__okio_lib()I
    .locals 3

    .line 127
    move-object v0, p0

    .local v0, "$this$commonGetSize$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 431
    .local v1, "$i$f$commonGetSize":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v0, v2

    .line 127
    .end local v0    # "$this$commonGetSize$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonGetSize":I
    return v0
.end method

.method public final getUtf8$external__okio__android_common__okio_lib()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 181
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 462
    .local v1, "$i$f$commonHashCode":I
    invoke-virtual {v0}, Lokio/ByteString;->getHashCode$external__okio__android_common__okio_lib()I

    move-result v2

    .line 463
    .local v2, "result$iv":I
    if-eqz v2, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    move v4, v3

    .local v4, "it$iv":I
    const/4 v5, 0x0

    .line 465
    .local v5, "$i$a$-also-ByteStringKt$commonHashCode$1$iv":I
    invoke-virtual {v0, v4}, Lokio/ByteString;->setHashCode$external__okio__android_common__okio_lib(I)V

    .line 466
    nop

    .line 464
    .end local v4    # "it$iv":I
    .end local v5    # "$i$a$-also-ByteStringKt$commonHashCode$1$iv":I
    move v2, v3

    .line 181
    .end local v0    # "$this$commonHashCode$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "result$iv":I
    :goto_0
    return v2
.end method

.method public hex()Ljava/lang/String;
    .locals 13

    .line 109
    move-object v0, p0

    .local v0, "$this$commonHex$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 365
    .local v1, "$i$f$commonHex":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 366
    .local v2, "result$iv":[C
    const/4 v3, 0x0

    .line 367
    .local v3, "c$iv":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v7, v4, v6

    .local v7, "b$iv":B
    add-int/lit8 v6, v6, 0x1

    .line 368
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "c$iv":I
    .local v8, "c$iv":I
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v9

    const/4 v10, 0x4

    .local v10, "other$iv$iv":I
    move v11, v7

    .local v11, "$this$shr$iv$iv":B
    const/4 v12, 0x0

    .line 369
    .local v12, "$i$f$shr":I
    shr-int v10, v11, v10

    .line 368
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v12    # "$i$f$shr":I
    and-int/lit8 v10, v10, 0xf

    aget-char v9, v9, v10

    aput-char v9, v2, v3

    .line 370
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "c$iv":I
    .restart local v3    # "c$iv":I
    invoke-static {}, Lokio/internal/ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v9

    const/16 v10, 0xf

    .restart local v10    # "other$iv$iv":I
    .local v11, "$this$and$iv$iv":B
    const/4 v12, 0x0

    .line 371
    .local v12, "$i$f$and":I
    and-int/2addr v10, v11

    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$and$iv$iv":B
    .end local v12    # "$i$f$and":I
    aget-char v9, v9, v10

    aput-char v9, v2, v8

    goto :goto_0

    .line 372
    .end local v7    # "b$iv":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    .line 109
    .end local v0    # "$this$commonHex$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonHex":I
    .end local v2    # "result$iv":[C
    .end local v3    # "c$iv":I
    return-object v4
.end method

.method public hmac$external__okio__android_common__okio_lib(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    nop

    .line 99
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 100
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 101
    new-instance v1, Lokio/ByteString;

    iget-object v2, p0, Lokio/ByteString;->data:[B

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    const-string v3, "mac.doFinal(data)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 102
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v0, "HmacSHA1"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$external__okio__android_common__okio_lib(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const-string v0, "HmacSHA256"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$external__okio__android_common__okio_lib(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const-string v0, "HmacSHA512"

    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->hmac$external__okio__android_common__okio_lib(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Lokio/ByteString;)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .locals 1
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result v0

    return v0
.end method

.method public final indexOf([B)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf([BI)I
    .locals 8
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    .local v0, "$this$commonIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 443
    .local v1, "$i$f$commonIndexOf":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 444
    .local v2, "limit$iv":I
    const/4 v3, 0x0

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v4, v2, :cond_2

    :cond_0
    move v5, v4

    .local v5, "i$iv":I
    add-int/lit8 v4, v4, 0x1

    .line 445
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v7, p1

    invoke-static {v6, v5, p1, v3, v7}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    goto :goto_0

    .line 444
    :cond_1
    if-ne v5, v2, :cond_0

    .line 449
    .end local v5    # "i$iv":I
    :cond_2
    const/4 v5, -0x1

    .line 171
    .end local v0    # "$this$commonIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonIndexOf":I
    .end local v2    # "limit$iv":I
    :goto_0
    return v5
.end method

.method public internalArray$external__okio__android_common__okio_lib()[B
    .locals 2

    .line 131
    move-object v0, p0

    .local v0, "$this$commonInternalArray$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 433
    .local v1, "$i$f$commonInternalArray":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v0

    .line 131
    .end local v0    # "$this$commonInternalArray$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonInternalArray":I
    return-object v0
.end method

.method public internalGet$external__okio__android_common__okio_lib(I)B
    .locals 3
    .param p1, "pos"    # I

    .line 119
    move-object v0, p0

    .local v0, "$this$commonGetByte$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 430
    .local v1, "$i$f$commonGetByte":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    aget-byte v0, v2, p1

    .line 119
    .end local v0    # "$this$commonGetByte$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonGetByte":I
    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .locals 3
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    move-object v0, p0

    .local v0, "$this$commonLastIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 450
    .local v1, "$i$f$commonLastIndexOf":I
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v0

    .line 174
    .end local v0    # "$this$commonLastIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonLastIndexOf":I
    return v0
.end method

.method public final lastIndexOf([B)I
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;[BIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf([BI)I
    .locals 9
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    move-object v0, p0

    .local v0, "$this$commonLastIndexOf$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 451
    .local v1, "$i$f$commonLastIndexOf":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 452
    .local v2, "limit$iv":I
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, -0x1

    if-ltz v3, :cond_2

    :cond_0
    move v5, v3

    .local v5, "i$iv":I
    add-int/2addr v3, v4

    .line 453
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {v6, v5, p1, v7, v8}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 454
    move v4, v5

    goto :goto_0

    .line 452
    :cond_1
    if-gez v3, :cond_0

    .line 457
    .end local v5    # "i$iv":I
    :cond_2
    nop

    .line 177
    .end local v0    # "$this$commonLastIndexOf$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonLastIndexOf":I
    .end local v2    # "limit$iv":I
    :goto_0
    return v4
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 72
    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 434
    .local v1, "$i$f$commonRangeEquals":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-virtual {p2, p3, v2, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 150
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonRangeEquals":I
    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 3
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 435
    .local v1, "$i$f$commonRangeEquals":I
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    sub-int/2addr v2, p4

    if-gt p1, v2, :cond_0

    .line 436
    if-ltz p3, :cond_0

    array-length v2, p2

    sub-int/2addr v2, p4

    if-gt p3, v2, :cond_0

    .line 437
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p4}, Lokio/-Util;->arrayRangeEquals([BI[BII)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 438
    :goto_0
    nop

    .line 157
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonRangeEquals":I
    return v2
.end method

.method public final setHashCode$external__okio__android_common__okio_lib(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 62
    iput p1, p0, Lokio/ByteString;->hashCode:I

    return-void
.end method

.method public final setUtf8$external__okio__android_common__okio_lib(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 74
    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 76
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 78
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$external__okio__android_common__okio_lib(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 125
    invoke-virtual {p0}, Lokio/ByteString;->getSize$external__okio__android_common__okio_lib()I

    move-result v0

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .locals 4
    .param p1, "prefix"    # Lokio/ByteString;

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    move-object v0, p0

    .local v0, "$this$commonStartsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 439
    .local v1, "$i$f$commonStartsWith":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v3, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v0

    .line 159
    .end local v0    # "$this$commonStartsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonStartsWith":I
    return v0
.end method

.method public final startsWith([B)Z
    .locals 4
    .param p1, "prefix"    # [B

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    move-object v0, p0

    .local v0, "$this$commonStartsWith$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 440
    .local v1, "$i$f$commonStartsWith":I
    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v3, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    .line 161
    .end local v0    # "$this$commonStartsWith$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonStartsWith":I
    return v0
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lokio/ByteString;->data:[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final substring()Lokio/ByteString;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final substring(I)Lokio/ByteString;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lokio/ByteString;
    .locals 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 117
    move-object v0, p0

    .local v0, "$this$commonSubstring$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 419
    .local v1, "$i$f$commonSubstring":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_6

    .line 421
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v4

    array-length v4, v4

    if-gt p2, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 423
    sub-int v4, p2, p1

    .line 424
    .local v4, "subLen$iv":I
    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 426
    if-nez p1, :cond_3

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    if-ne p2, v2, :cond_3

    .line 427
    goto :goto_3

    .line 429
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    invoke-static {v3, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    .line 117
    .end local v0    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonSubstring":I
    .end local v4    # "subLen$iv":I
    :goto_3
    return-object v0

    .line 420
    .restart local v0    # "$this$commonSubstring$iv":Lokio/ByteString;
    .restart local v1    # "$i$f$commonSubstring":I
    .restart local v4    # "subLen$iv":I
    :cond_4
    const/4 v2, 0x0

    .line 424
    .local v2, "$i$a$-require-ByteStringKt$commonSubstring$3$iv":I
    nop

    .end local v2    # "$i$a$-require-ByteStringKt$commonSubstring$3$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endIndex < beginIndex"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    .end local v4    # "subLen$iv":I
    :cond_5
    const/4 v2, 0x0

    .line 421
    .local v2, "$i$a$-require-ByteStringKt$commonSubstring$2$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-ByteStringKt$commonSubstring$2$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_6
    const/4 v2, 0x0

    .line 419
    .local v2, "$i$a$-require-ByteStringKt$commonSubstring$1$iv":I
    nop

    .end local v2    # "$i$a$-require-ByteStringKt$commonSubstring$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "beginIndex < 0"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .locals 9

    .line 111
    move-object v0, p0

    .local v0, "$this$commonToAsciiLowercase$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 373
    .local v1, "$i$f$commonToAsciiLowercase":I
    const/4 v2, 0x0

    .line 374
    .local v2, "i$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 375
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 376
    .local v3, "c$iv":B
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v5, 0x5a

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 382
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .local v6, "lowercase$iv":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i$iv":I
    .local v7, "i$iv":I
    add-int/lit8 v8, v3, 0x20

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 384
    :goto_1
    array-length v2, v6

    if-ge v7, v2, :cond_3

    .line 385
    aget-byte v3, v6, v7

    .line 386
    if-lt v3, v4, :cond_2

    if-le v3, v5, :cond_1

    goto :goto_2

    .line 390
    :cond_1
    add-int/lit8 v2, v3, 0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 391
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 387
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 388
    goto :goto_1

    .line 393
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    goto :goto_4

    .line 377
    .end local v6    # "lowercase$iv":[B
    .end local v7    # "i$iv":I
    .restart local v2    # "i$iv":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 378
    goto :goto_0

    .line 395
    .end local v3    # "c$iv":B
    :cond_5
    nop

    .line 111
    .end local v0    # "$this$commonToAsciiLowercase$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToAsciiLowercase":I
    .end local v2    # "i$iv":I
    :goto_4
    return-object v0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .locals 9

    .line 113
    move-object v0, p0

    .local v0, "$this$commonToAsciiUppercase$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 396
    .local v1, "$i$f$commonToAsciiUppercase":I
    const/4 v2, 0x0

    .line 397
    .local v2, "i$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 398
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    aget-byte v3, v3, v2

    .line 399
    .local v3, "c$iv":B
    const/16 v4, 0x61

    if-lt v3, v4, :cond_4

    const/16 v5, 0x7a

    if-le v3, v5, :cond_0

    goto :goto_3

    .line 405
    :cond_0
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "copyOf(this, size)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .local v6, "lowercase$iv":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i$iv":I
    .local v7, "i$iv":I
    add-int/lit8 v8, v3, -0x20

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 407
    :goto_1
    array-length v2, v6

    if-ge v7, v2, :cond_3

    .line 408
    aget-byte v3, v6, v7

    .line 409
    if-lt v3, v4, :cond_2

    if-le v3, v5, :cond_1

    goto :goto_2

    .line 413
    :cond_1
    add-int/lit8 v2, v3, -0x20

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 414
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 410
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 411
    goto :goto_1

    .line 416
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v6}, Lokio/ByteString;-><init>([B)V

    move-object v0, v2

    goto :goto_4

    .line 400
    .end local v6    # "lowercase$iv":[B
    .end local v7    # "i$iv":I
    .restart local v2    # "i$iv":I
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 401
    goto :goto_0

    .line 418
    .end local v3    # "c$iv":B
    :cond_5
    nop

    .line 113
    .end local v0    # "$this$commonToAsciiUppercase$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToAsciiUppercase":I
    .end local v2    # "i$iv":I
    :goto_4
    return-object v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 129
    move-object v0, p0

    .local v0, "$this$commonToByteArray$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 432
    .local v1, "$i$f$commonToByteArray":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .end local v0    # "$this$commonToByteArray$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToByteArray":I
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 22

    .line 185
    move-object/from16 v0, p0

    .local v0, "$this$commonToString$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 483
    .local v1, "$i$f$commonToString":I
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "[size=0]"

    goto/16 :goto_6

    .line 485
    :cond_1
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v2

    const/16 v5, 0x40

    invoke-static {v2, v5}, Lokio/internal/ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v2

    .line 486
    .local v2, "i$iv":I
    const/4 v6, -0x1

    const-string v7, "\u2026]"

    const-string v8, "[size="

    const/16 v9, 0x5d

    if-ne v2, v6, :cond_8

    .line 487
    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    if-gt v6, v5, :cond_2

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 490
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "beginIndex$iv$iv":I
    const/16 v8, 0x40

    .local v8, "endIndex$iv$iv":I
    move-object v9, v0

    .local v9, "$this$commonSubstring$iv$iv":Lokio/ByteString;
    const/4 v10, 0x0

    .line 491
    .local v10, "$i$f$commonSubstring":I
    nop

    .line 493
    invoke-virtual {v9}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v11

    array-length v11, v11

    if-gt v8, v11, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    move v11, v4

    :goto_1
    if-eqz v11, :cond_7

    .line 495
    sub-int v11, v8, v6

    .line 496
    .local v11, "subLen$iv$iv":I
    if-ltz v11, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    if-eqz v3, :cond_6

    .line 498
    invoke-virtual {v9}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v3

    array-length v3, v3

    if-ne v8, v3, :cond_5

    .line 499
    goto :goto_3

    .line 501
    :cond_5
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v4

    invoke-static {v4, v6, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v9, v3

    .line 490
    .end local v6    # "beginIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "subLen$iv$iv":I
    :goto_3
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    :goto_4
    move-object v2, v3

    goto/16 :goto_6

    .line 492
    .restart local v6    # "beginIndex$iv$iv":I
    .restart local v8    # "endIndex$iv$iv":I
    .restart local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .restart local v10    # "$i$f$commonSubstring":I
    .restart local v11    # "subLen$iv$iv":I
    :cond_6
    const/4 v3, 0x0

    .line 496
    .local v3, "$i$a$-require-ByteStringKt$commonSubstring$3$iv$iv":I
    nop

    .end local v3    # "$i$a$-require-ByteStringKt$commonSubstring$3$iv$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 492
    .end local v11    # "subLen$iv$iv":I
    :cond_7
    const/4 v3, 0x0

    .line 493
    .local v3, "$i$a$-require-ByteStringKt$commonSubstring$2$iv$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-ByteStringKt$commonSubstring$2$iv$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 502
    .end local v6    # "beginIndex$iv$iv":I
    .end local v8    # "endIndex$iv$iv":I
    .end local v9    # "$this$commonSubstring$iv$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    :cond_8
    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "text$iv":Ljava/lang/String;
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\\"

    const-string v12, "\\\\"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 505
    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "\n"

    const-string v18, "\\n"

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 506
    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 503
    nop

    .line 507
    .local v4, "safeText$iv":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lokio/ByteString;->getData$external__okio__android_common__okio_lib()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 510
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    :goto_5
    move-object v2, v5

    .line 185
    .end local v0    # "$this$commonToString$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonToString":I
    .end local v2    # "i$iv":I
    .end local v3    # "text$iv":Ljava/lang/String;
    .end local v4    # "safeText$iv":Ljava/lang/String;
    :goto_6
    return-object v2
.end method

.method public utf8()Ljava/lang/String;
    .locals 4

    .line 65
    move-object v0, p0

    .local v0, "$this$commonUtf8$iv":Lokio/ByteString;
    const/4 v1, 0x0

    .line 356
    .local v1, "$i$f$commonUtf8":I
    invoke-virtual {v0}, Lokio/ByteString;->getUtf8$external__okio__android_common__okio_lib()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "result$iv":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 359
    invoke-virtual {v0}, Lokio/ByteString;->internalArray$external__okio__android_common__okio_lib()[B

    move-result-object v3

    invoke-static {v3}, Lokio/-Platform;->toUtf8String([B)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {v0, v2}, Lokio/ByteString;->setUtf8$external__okio__android_common__okio_lib(Ljava/lang/String;)V

    .line 362
    :cond_0
    nop

    .line 65
    .end local v0    # "$this$commonUtf8$iv":Lokio/ByteString;
    .end local v1    # "$i$f$commonUtf8":I
    .end local v2    # "result$iv":Ljava/lang/String;
    return-object v2
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method

.method public write$external__okio__android_common__okio_lib(Lokio/Buffer;II)V
    .locals 1
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {p0, p1, p2, p3}, Lokio/internal/ByteStringKt;->commonWrite(Lokio/ByteString;Lokio/Buffer;II)V

    return-void
.end method
