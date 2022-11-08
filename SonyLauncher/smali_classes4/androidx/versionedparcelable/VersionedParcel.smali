.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$Api21Impl;,
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_FLOAT:I = 0x8

.field private static final TYPE_INTEGER:I = 0x7

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# instance fields
.field final mParcelizerCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final mReadCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 95
    .local p1, "readCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p2, "writeCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p3, "parcelizerCache":Landroidx/collection/SimpleArrayMap;, "Landroidx/collection/SimpleArrayMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/SimpleArrayMap;

    .line 97
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/SimpleArrayMap;

    .line 98
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/SimpleArrayMap;

    .line 99
    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1240
    packed-switch p1, :pswitch_data_0

    .line 1258
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1244
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1246
    :pswitch_2
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1248
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1250
    :pswitch_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1252
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1254
    :pswitch_6
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    return-object v0

    .line 1256
    :pswitch_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1242
    :pswitch_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1671
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1672
    .local v0, "ret":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1674
    .local v1, "pkg":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "%s.%sParcelizer"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1675
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1676
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1678
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "parcelCls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1647
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 1648
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 1649
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 1650
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "read"

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1651
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1653
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v1
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 1228
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 1229
    :cond_0
    return-object p0
.end method

.method private getType(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 1020
    .local p1, "t":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1021
    const/4 v0, 0x4

    return v0

    .line 1022
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 1023
    const/4 v0, 0x2

    return v0

    .line 1024
    :cond_1
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v0, :cond_2

    .line 1025
    const/4 v0, 0x1

    return v0

    .line 1026
    :cond_2
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 1027
    const/4 v0, 0x3

    return v0

    .line 1028
    :cond_3
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_4

    .line 1029
    const/4 v0, 0x5

    return v0

    .line 1030
    :cond_4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1031
    const/4 v0, 0x7

    return v0

    .line 1032
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 1033
    const/16 v0, 0x8

    return v0

    .line 1035
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be VersionedParcelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1659
    .local p1, "baseCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1660
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    .line 1661
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1662
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v4, v2, v3

    const-string v3, "write"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1663
    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v0
.end method

.method private readCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection<",
            "TT;>;>(TS;)TS;"
        }
    .end annotation

    .line 1365
    .local p1, "list":Ljava/util/Collection;, "TS;"
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1366
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1367
    return-object v1

    .line 1369
    :cond_0
    if-eqz v0, :cond_2

    .line 1370
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    .line 1371
    .local v2, "type":I
    if-gez v0, :cond_1

    .line 1372
    return-object v1

    .line 1374
    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 1400
    :goto_0
    :pswitch_0
    if-lez v0, :cond_2

    .line 1401
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1376
    :goto_1
    :pswitch_1
    if-lez v0, :cond_2

    .line 1377
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1378
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1394
    :goto_2
    :pswitch_2
    if-lez v0, :cond_2

    .line 1395
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1396
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1382
    :goto_3
    :pswitch_3
    if-lez v0, :cond_2

    .line 1383
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1384
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1388
    :goto_4
    :pswitch_4
    if-lez v0, :cond_2

    .line 1389
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1390
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1407
    .end local v2    # "type":I
    :cond_2
    :goto_5
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readExceptionCode()I
    .locals 1

    .line 1219
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1220
    .local v0, "code":I
    return v0
.end method

.method private writeCollection(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 905
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    .line 906
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 907
    return-void

    .line 910
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 911
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 912
    if-lez v0, :cond_6

    .line 913
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v1

    .line 914
    .local v1, "type":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 915
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 947
    :pswitch_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 948
    .local v3, "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 949
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 942
    :pswitch_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 943
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 944
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 945
    :cond_1
    goto/16 :goto_7

    .line 937
    :pswitch_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 938
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 939
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 940
    :cond_2
    goto :goto_7

    .line 917
    :pswitch_4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 918
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 919
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_3

    .line 920
    :cond_3
    goto :goto_7

    .line 932
    :pswitch_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 933
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/io/Serializable;

    invoke-direct {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 934
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_4

    .line 935
    :cond_4
    goto :goto_7

    .line 922
    :pswitch_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 923
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 924
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 925
    :cond_5
    goto :goto_7

    .line 927
    :pswitch_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 928
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 929
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_6

    .line 953
    .end local v1    # "type":I
    :cond_6
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .locals 0
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 900
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 901
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 902
    return-void
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .locals 6
    .param p1, "s"    # Ljava/io/Serializable;

    .line 1087
    if-nez p1, :cond_0

    .line 1088
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1089
    return-void

    .line 1091
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1094
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1096
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1097
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1098
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 1100
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 1106
    return-void

    .line 1101
    :catch_0
    move-exception v2

    .line 1102
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 4
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1067
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .local v0, "name":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1073
    return-void

    .line 1068
    .end local v0    # "name":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not have a Parcelizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1469
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1470
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1471
    return-object v1

    .line 1473
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1474
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_2

    .line 1475
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    .line 1476
    .local v3, "type":I
    if-gez v0, :cond_1

    .line 1477
    return-object v1

    .line 1479
    :cond_1
    packed-switch v3, :pswitch_data_0

    goto :goto_5

    .line 1505
    :goto_0
    :pswitch_0
    if-lez v0, :cond_2

    .line 1506
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1481
    :goto_1
    :pswitch_1
    if-lez v0, :cond_2

    .line 1482
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1499
    :goto_2
    :pswitch_2
    if-lez v0, :cond_2

    .line 1500
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1487
    :goto_3
    :pswitch_3
    if-lez v0, :cond_2

    .line 1488
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1493
    :goto_4
    :pswitch_4
    if-lez v0, :cond_2

    .line 1494
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1495
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1512
    .end local v3    # "type":I
    :cond_2
    :goto_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 1458
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    return-object p1

    .line 1461
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .locals 1
    .param p1, "def"    # Z
    .param p2, "fieldId"    # I

    .line 415
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    return p1

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    return v0
.end method

.method protected readBooleanArray()[Z
    .locals 4

    .line 602
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 603
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 604
    const/4 v1, 0x0

    return-object v1

    .line 606
    :cond_0
    new-array v1, v0, [Z

    .line 607
    .local v1, "val":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 608
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v1, v2

    .line 607
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public readBooleanArray([ZI)[Z
    .locals 1
    .param p1, "def"    # [Z
    .param p2, "fieldId"    # I

    .line 592
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    return-object p1

    .line 595
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object v0

    return-object v0
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "def"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .line 514
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    return-object p1

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public readByte(BI)B
    .locals 1
    .param p1, "def"    # B
    .param p2, "fieldId"    # I

    .line 1266
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    return p1

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .locals 1
    .param p1, "def"    # [B
    .param p2, "fieldId"    # I

    .line 491
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    return-object p1

    .line 494
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readCharArray([CI)[C
    .locals 4
    .param p1, "def"    # [C
    .param p2, "fieldId"    # I

    .line 642
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    return-object p1

    .line 645
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 646
    .local v0, "n":I
    if-gez v0, :cond_1

    .line 647
    const/4 v1, 0x0

    return-object v1

    .line 649
    :cond_1
    new-array v1, v0, [C

    .line 650
    .local v1, "val":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 651
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method protected abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "def"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 632
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    return-object p1

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .locals 2
    .param p1, "def"    # D
    .param p3, "fieldId"    # I

    .line 457
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    return-wide p1

    .line 460
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method protected readDoubleArray()[D
    .locals 5

    .line 829
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 830
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 831
    const/4 v1, 0x0

    return-object v1

    .line 833
    :cond_0
    new-array v1, v0, [D

    .line 834
    .local v1, "val":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 835
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 834
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 837
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public readDoubleArray([DI)[D
    .locals 1
    .param p1, "def"    # [D
    .param p2, "fieldId"    # I

    .line 819
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    return-object p1

    .line 822
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object v0

    return-object v0
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .locals 3
    .param p1, "def"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .line 1196
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    return-object p1

    .line 1199
    :cond_0
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    move-result v0

    .line 1200
    .local v0, "code":I
    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    return-object v2

    .line 1204
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .locals 1
    .param p1, "def"    # F
    .param p2, "fieldId"    # I

    .line 446
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    return p1

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    return v0
.end method

.method protected readFloatArray()[F
    .locals 4

    .line 783
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 784
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 785
    const/4 v1, 0x0

    return-object v1

    .line 787
    :cond_0
    new-array v1, v0, [F

    .line 788
    .local v1, "val":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 789
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public readFloatArray([FI)[F
    .locals 1
    .param p1, "def"    # [F
    .param p2, "fieldId"    # I

    .line 773
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    return-object p1

    .line 776
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object v0

    return-object v0
.end method

.method protected readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 4
    .param p1, "parcelCls"    # Ljava/lang/String;
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .line 1597
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1598
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1612
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1610
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1611
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1601
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1603
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1606
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1607
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1609
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1604
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1599
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1600
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .locals 1
    .param p1, "def"    # I
    .param p2, "fieldId"    # I

    .line 425
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    return p1

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    return v0
.end method

.method protected readIntArray()[I
    .locals 4

    .line 691
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 692
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 693
    const/4 v1, 0x0

    return-object v1

    .line 695
    :cond_0
    new-array v1, v0, [I

    .line 696
    .local v1, "val":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 697
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public readIntArray([II)[I
    .locals 1
    .param p1, "def"    # [I
    .param p2, "fieldId"    # I

    .line 681
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    return-object p1

    .line 684
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1356
    .local p1, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    return-object p1

    .line 1359
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .locals 2
    .param p1, "def"    # J
    .param p3, "fieldId"    # I

    .line 435
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    return-wide p1

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readLongArray()[J
    .locals 5

    .line 737
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 738
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 739
    const/4 v1, 0x0

    return-object v1

    .line 741
    :cond_0
    new-array v1, v0, [J

    .line 742
    .local v1, "val":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 743
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 742
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public readLongArray([JI)[J
    .locals 1
    .param p1, "def"    # [J
    .param p2, "fieldId"    # I

    .line 727
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    return-object p1

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object v0

    return-object v0
.end method

.method public readMap(Ljava/util/Map;I)Ljava/util/Map;
    .locals 7
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1423
    .local p1, "def":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    return-object p1

    .line 1426
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1427
    .local v0, "size":I
    if-gez v0, :cond_1

    .line 1428
    const/4 v1, 0x0

    return-object v1

    .line 1430
    :cond_1
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1, v0}, Landroidx/collection/ArrayMap;-><init>(I)V

    .line 1431
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez v0, :cond_2

    .line 1432
    return-object v1

    .line 1434
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1435
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<TK;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1436
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1437
    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1438
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1439
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1441
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 1
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 501
    .local p1, "def":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    return-object p1

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .locals 8

    .line 1554
    const-string v0, ")"

    const-string v1, "Unable to read Serializable object (name = "

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1560
    const/4 v0, 0x0

    return-object v0

    .line 1563
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v3

    .line 1564
    .local v3, "serializedData":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1566
    .local v4, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v5, Landroidx/versionedparcelable/VersionedParcel$1;

    invoke-direct {v5, p0, v4}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    .line 1578
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1582
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v5

    .line 1583
    .local v5, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1579
    .end local v5    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 1580
    .local v5, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .locals 1
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1336
    .local p1, "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    return-object p1

    .line 1339
    :cond_0
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .locals 1
    .param p1, "def"    # Landroid/util/Size;
    .param p2, "fieldId"    # I

    .line 1278
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    return-object p1

    .line 1281
    :cond_0
    invoke-static {p0}, Landroidx/versionedparcelable/VersionedParcel$Api21Impl;->readSize(Landroidx/versionedparcelable/VersionedParcel;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .locals 1
    .param p1, "def"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I

    .line 1290
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    return-object p1

    .line 1293
    :cond_0
    invoke-static {p0}, Landroidx/versionedparcelable/VersionedParcel$Api21Impl;->readSizeF(Landroidx/versionedparcelable/VersionedParcel;)Landroid/util/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .locals 5
    .param p1, "def"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .line 1306
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    return-object p1

    .line 1309
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1310
    .local v0, "n":I
    if-gez v0, :cond_1

    .line 1311
    const/4 v1, 0x0

    return-object v1

    .line 1313
    :cond_1
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1314
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .line 1315
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1316
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1319
    :cond_2
    return-object v1
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 468
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    return-object p1

    .line 471
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .locals 1
    .param p1, "def"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .line 479
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    return-object p1

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1539
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1541
    const/4 v1, 0x0

    return-object v1

    .line 1543
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    return-object v1
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 1
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1522
    .local p1, "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1523
    return-object p1

    .line 1525
    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .locals 0
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .line 285
    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 973
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    .line 974
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 975
    return-void

    .line 978
    :cond_0
    array-length v0, p1

    .line 979
    .local v0, "n":I
    const/4 v1, 0x0

    .line 980
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 981
    if-lez v0, :cond_1

    .line 982
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v2

    .line 983
    .local v2, "type":I
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 984
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 1010
    :goto_0
    :pswitch_0
    if-ge v1, v0, :cond_1

    .line 1011
    aget-object v3, p1, v1

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 986
    :goto_1
    :pswitch_1
    if-ge v1, v0, :cond_1

    .line 987
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1004
    :goto_2
    :pswitch_2
    if-ge v1, v0, :cond_1

    .line 1005
    aget-object v3, p1, v1

    check-cast v3, Ljava/io/Serializable;

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 992
    :goto_3
    :pswitch_3
    if-ge v1, v0, :cond_1

    .line 993
    aget-object v3, p1, v1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 998
    :goto_4
    :pswitch_4
    if-ge v1, v0, :cond_1

    .line 999
    aget-object v3, p1, v1

    check-cast v3, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1017
    .end local v2    # "type":I
    :cond_1
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .locals 0
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    .line 966
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 967
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .locals 0
    .param p1, "val"    # Z
    .param p2, "fieldId"    # I

    .line 310
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 311
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 312
    return-void
.end method

.method protected writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    .line 577
    if-eqz p1, :cond_1

    .line 578
    array-length v0, p1

    .line 579
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 580
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 581
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 584
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 586
    :goto_1
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .locals 0
    .param p1, "val"    # [Z
    .param p2, "fieldId"    # I

    .line 570
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 571
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    .line 572
    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "val"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .line 301
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 302
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public writeByte(BI)V
    .locals 0
    .param p1, "val"    # B
    .param p2, "fieldId"    # I

    .line 525
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 526
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 527
    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "fieldId"    # I

    .line 320
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 321
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    .line 322
    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "fieldId"    # I

    .line 332
    invoke-virtual {p0, p4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    .line 334
    return-void
.end method

.method public writeCharArray([CI)V
    .locals 3
    .param p1, "val"    # [C
    .param p2, "fieldId"    # I

    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 617
    if-eqz p1, :cond_1

    .line 618
    array-length v0, p1

    .line 619
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 621
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 624
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 626
    :goto_1
    return-void
.end method

.method protected abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 341
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 342
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .locals 0
    .param p1, "val"    # D
    .param p3, "fieldId"    # I

    .line 377
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 378
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 379
    return-void
.end method

.method protected writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    .line 804
    if-eqz p1, :cond_1

    .line 805
    array-length v0, p1

    .line 806
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 807
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 808
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 811
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 813
    :goto_1
    return-void
.end method

.method public writeDoubleArray([DI)V
    .locals 0
    .param p1, "val"    # [D
    .param p2, "fieldId"    # I

    .line 797
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 798
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    .line 799
    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .line 1132
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1133
    if-nez p1, :cond_0

    .line 1134
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    .line 1135
    return-void

    .line 1137
    :cond_0
    const/4 v0, 0x0

    .line 1138
    .local v0, "code":I
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1142
    const/16 v0, -0x9

    goto :goto_0

    .line 1143
    :cond_1
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_2

    .line 1144
    const/4 v0, -0x1

    goto :goto_0

    .line 1145
    :cond_2
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_3

    .line 1146
    const/4 v0, -0x2

    goto :goto_0

    .line 1147
    :cond_3
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_4

    .line 1148
    const/4 v0, -0x3

    goto :goto_0

    .line 1149
    :cond_4
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_5

    .line 1150
    const/4 v0, -0x4

    goto :goto_0

    .line 1151
    :cond_5
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_6

    .line 1152
    const/4 v0, -0x5

    goto :goto_0

    .line 1153
    :cond_6
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_7

    .line 1154
    const/4 v0, -0x6

    goto :goto_0

    .line 1155
    :cond_7
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_8

    .line 1156
    const/4 v0, -0x7

    .line 1158
    :cond_8
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1159
    if-nez v0, :cond_a

    .line 1160
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_9

    .line 1161
    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1163
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1165
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1166
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1169
    :pswitch_0
    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 1172
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .locals 0
    .param p1, "val"    # F
    .param p2, "fieldId"    # I

    .line 368
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 369
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 370
    return-void
.end method

.method protected writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    .line 758
    if-eqz p1, :cond_1

    .line 759
    array-length v0, p1

    .line 760
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 761
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 762
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 765
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 767
    :goto_1
    return-void
.end method

.method public writeFloatArray([FI)V
    .locals 0
    .param p1, "val"    # [F
    .param p2, "fieldId"    # I

    .line 751
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 752
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    .line 753
    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .locals 0
    .param p1, "val"    # I
    .param p2, "fieldId"    # I

    .line 350
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 351
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 352
    return-void
.end method

.method protected writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    .line 666
    if-eqz p1, :cond_1

    .line 667
    array-length v0, p1

    .line 668
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 669
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 670
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 673
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 675
    :goto_1
    return-void
.end method

.method public writeIntArray([II)V
    .locals 0
    .param p1, "val"    # [I
    .param p2, "fieldId"    # I

    .line 659
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 660
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    .line 661
    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .locals 0
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 865
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 866
    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .locals 0
    .param p1, "val"    # J
    .param p3, "fieldId"    # I

    .line 359
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 360
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 361
    return-void
.end method

.method protected writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    .line 712
    if-eqz p1, :cond_1

    .line 713
    array-length v0, p1

    .line 714
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 716
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 719
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 721
    :goto_1
    return-void
.end method

.method public writeLongArray([JI)V
    .locals 0
    .param p1, "val"    # [J
    .param p2, "fieldId"    # I

    .line 705
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 706
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    .line 707
    return-void
.end method

.method public writeMap(Ljava/util/Map;I)V
    .locals 6
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 879
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 880
    if-nez p1, :cond_0

    .line 881
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 882
    return-void

    .line 884
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 885
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 886
    if-nez v0, :cond_1

    .line 887
    return-void

    .line 889
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 890
    .local v1, "keySet":Ljava/util/List;, "Ljava/util/List<TK;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    .local v2, "valueSet":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 892
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 895
    :cond_2
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 896
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 897
    return-void
.end method

.method protected writeNoException()V
    .locals 1

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1183
    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "fieldId"    # I

    .line 407
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 408
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 409
    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .locals 0
    .param p1, "s"    # Ljava/io/Serializable;
    .param p2, "fieldId"    # I

    .line 1082
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1083
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1084
    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .locals 0
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)V"
        }
    .end annotation

    .line 851
    .local p1, "val":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 852
    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .locals 0
    .param p1, "val"    # Landroid/util/Size;
    .param p2, "fieldId"    # I

    .line 535
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 536
    invoke-static {p0, p1}, Landroidx/versionedparcelable/VersionedParcel$Api21Impl;->writeSize(Landroidx/versionedparcelable/VersionedParcel;Landroid/util/Size;)V

    .line 537
    return-void
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .locals 0
    .param p1, "val"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I

    .line 545
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 546
    invoke-static {p0, p1}, Landroidx/versionedparcelable/VersionedParcel$Api21Impl;->writeSizeF(Landroidx/versionedparcelable/VersionedParcel;Landroid/util/SizeF;)V

    .line 547
    return-void
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .line 552
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 555
    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 558
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 561
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 562
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 386
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 387
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "val"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .line 395
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 396
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 397
    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .locals 0
    .param p1, "val"    # Landroid/os/IInterface;
    .param p2, "fieldId"    # I

    .line 292
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 293
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 294
    return-void
.end method

.method protected writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .line 1624
    .local p1, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1625
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    nop

    .line 1642
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1637
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 1638
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1628
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 1629
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1630
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1633
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1634
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1636
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1631
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1626
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 1
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1053
    if-nez p1, :cond_0

    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1055
    return-void

    .line 1057
    :cond_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1059
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1060
    .local v0, "subParcel":Landroidx/versionedparcelable/VersionedParcel;
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1061
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    .line 1062
    return-void
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .locals 0
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p2, "fieldId"    # I

    .line 1046
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1047
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1048
    return-void
.end method
