.class public Lcom/sonyericsson/music/common/ServiceProviderChecker;
.super Ljava/lang/Object;
.source "ServiceProviderChecker.java"


# static fields
.field private static final CHINESE_SERVICE_PROVIDERS:[Ljava/lang/String;

.field private static final CUSTOMER_ID_KEY:Ljava/lang/String; = "ro.somc.customerid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    .line 20
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "284"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "285"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "443"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "8259"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "8260"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "8266"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "8267"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "8721"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "8760"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "8788"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "8908"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "8969"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "8970"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/ServiceProviderChecker;->CHINESE_SERVICE_PROVIDERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceProvider()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 32
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 33
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 35
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "get"

    .line 36
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 38
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.somc.customerid"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public isChineseServiceProvider()Z
    .locals 6

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ServiceProviderChecker;->getServiceProvider()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 67
    sget-object v1, Lcom/sonyericsson/music/common/ServiceProviderChecker;->CHINESE_SERVICE_PROVIDERS:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 68
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method
