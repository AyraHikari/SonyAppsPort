.class public final Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsProxy.java"


# static fields
.field private static final PARAMETER_VALUE_MAX_LENGTH:I = 0x64

.field private static final USER_PROPERTY_VALUE_MAX_LENGTH:I = 0x24

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FirebaseAnalyticsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValidatedUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    .line 188
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProvider;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "provider_check"

    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    return-object v1
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, p1, v0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 42
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->isAnalyticsCollectionAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 51
    invoke-static {v5}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->getValidatedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    return v1

    .line 56
    :cond_1
    sget-object p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;

    move-object v2, v0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static setAnalyticsCollectionEnabled(Landroid/content/Context;ZZ)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 147
    sget-object v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$3;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setUserProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 97
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsUtils;->isAnalyticsCollectionAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 98
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->getValidatedUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 111
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$2;

    invoke-direct {v2, p1, p2, p0, v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method
