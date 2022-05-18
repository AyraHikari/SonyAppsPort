.class public Lcom/sonymobile/music/common/GoogleAnalyticsProvider;
.super Landroid/content/ContentProvider;
.source "GoogleAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/GoogleAnalyticsProvider$Extras;,
        Lcom/sonymobile/music/common/GoogleAnalyticsProvider$Methods;,
        Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;
    }
.end annotation


# static fields
.field public static final CONTAINER_LOAD_RESULT_KEY:Ljava/lang/String; = "container-load-result"

.field private static final CONTAINER_TIMEOUT_SECONDS:I = 0x2

.field private static final LATCH_TIMEOUT_SECONDS:I = 0xa

.field private static final LOCK:Ljava/lang/Object;

.field public static final URI:Landroid/net/Uri;

.field private static sAllowTracking:Z

.field private static sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

.field private static volatile sIsDebug:Z

.field private static final sLoadContainerLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.sonymobile.music.googleanalyticsprovider"

    .line 43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->URI:Landroid/net/Uri;

    .line 46
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sLoadContainerLatch:Ljava/util/concurrent/CountDownLatch;

    .line 51
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->loadGtmContainer(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;)Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;
    .locals 0

    .line 29
    sput-object p0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 29
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sLoadContainerLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private static loadGtmContainer(Landroid/content/Context;)V
    .locals 10

    .line 322
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v2, "loadGtmContainer"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 326
    :cond_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v3

    const-string v5, "GTM-PLPKC6J"

    sget v6, Lcom/sonymobile/music/common/R$raw;->gtm_default_container:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-instance v9, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$2;

    invoke-direct {v9}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$2;-><init>()V

    move-object v4, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    return-void
.end method

.method private setupTagManager()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    sget-boolean v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    invoke-static {v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->enable(Z)V

    .line 317
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    .line 318
    sget-boolean v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 87
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "send-exception"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "send-screenview"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "prepare"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "send-event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "set-custom-dimension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v4

    .line 257
    :pswitch_0
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_1

    .line 258
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v5, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_6

    .line 260
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "custom-dimension-tag"

    .line 264
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom-dimension-value"

    .line 265
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 270
    :cond_3
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v4, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CUSTOM DIMENSION: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 275
    :cond_4
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    return-object p2

    :cond_5
    :goto_2
    return-object v4

    :cond_6
    :goto_3
    return-object v4

    .line 235
    :pswitch_1
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_7

    .line 236
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_b

    .line 238
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, "exception-msg"

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    return-object v4

    .line 247
    :cond_9
    sget-boolean p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p3, :cond_a

    .line 248
    sget-object p3, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 252
    :cond_a
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Ljava/lang/String;)V

    return-object p2

    :cond_b
    :goto_4
    return-object v4

    .line 213
    :pswitch_2
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_c

    .line 214
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_c
    if-eqz p3, :cond_10

    .line 216
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    const-string p1, "screen-name"

    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    return-object v4

    .line 225
    :cond_e
    sget-boolean p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p3, :cond_f

    .line 226
    sget-object p3, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCREENVIEW: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    :cond_f
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    return-object p2

    :cond_10
    :goto_5
    return-object v4

    .line 187
    :pswitch_3
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz v0, :cond_11

    .line 188
    sget-object v0, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_11
    if-eqz p3, :cond_15

    .line 190
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    if-nez p1, :cond_12

    goto :goto_6

    :cond_12
    const-string p1, "event-category"

    .line 194
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "event-action"

    .line 195
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "event-label"

    .line 196
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string p1, "event-value"

    .line 197
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 198
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-object v4

    .line 202
    :cond_13
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p1, :cond_14

    .line 203
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT: C:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' A:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' L:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' V:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 208
    :cond_14
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v5

    invoke-virtual/range {v5 .. v10}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p2

    :cond_15
    :goto_6
    return-object v4

    :pswitch_4
    if-eqz p3, :cond_20

    .line 90
    sget-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    if-nez v0, :cond_16

    goto/16 :goto_9

    :cond_16
    const-string v0, "is_data_traffic_warning_required"

    .line 94
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 97
    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v4, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sget-object v5, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    if-ne v4, v5, :cond_19

    .line 104
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isWifiAndMobileDataAccepted(Landroid/content/Context;)Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    move-result-object v4

    if-eqz v0, :cond_17

    .line 107
    sget-object v5, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    if-ne v4, v5, :cond_17

    const/4 v0, 0x1

    goto :goto_7

    :cond_17
    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_7

    :cond_18
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_19

    .line 114
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_IN_PROGRESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 119
    new-instance v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$1;-><init>(Lcom/sonymobile/music/common/GoogleAnalyticsProvider;)V

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 127
    :cond_19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v0, "debug"

    .line 134
    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    sput-boolean p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    .line 135
    sget-boolean p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p3, :cond_1a

    .line 136
    sget-object p3, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 140
    :cond_1a
    invoke-direct {p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->setupTagManager()V

    .line 143
    sget-object p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 145
    :try_start_1
    sget-object p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_IN_PROGRESS:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    if-ne p3, v0, :cond_1b

    const/4 v2, 0x1

    .line 148
    :cond_1b
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1e

    .line 153
    :try_start_2
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p1, :cond_1c

    .line 154
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v0, "Container not loaded - waiting for latch"

    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 158
    :cond_1c
    sget-object p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sLoadContainerLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0xa

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 159
    invoke-virtual {p1, v0, v1, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    .line 161
    sget-boolean p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p3, :cond_1e

    if-eqz p1, :cond_1d

    .line 163
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v0, "Done waiting for latch"

    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_8

    .line 166
    :cond_1d
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    const-string v0, "Waiting for latch timed out after 10 seconds"

    invoke-virtual {p1, p3, v0}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    :cond_1e
    :goto_8
    sget-object p3, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    monitor-enter p3

    .line 177
    :try_start_3
    sget-boolean p1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sIsDebug:Z

    if-eqz p1, :cond_1f

    .line 178
    sget-object p1, Lcom/sonymobile/music/common/Debug;->DEBUG:Lcom/sonymobile/music/common/Debug;

    const-class v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waited for container to be loaded. Result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    .line 181
    :cond_1f
    monitor-exit p3

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p2

    .line 148
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    :catchall_2
    move-exception p1

    .line 127
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_20
    :goto_9
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x4c61a3eb -> :sswitch_4
        -0x24c16feb -> :sswitch_3
        -0x12f9f2f9 -> :sswitch_2
        0xb24fc76 -> :sswitch_1
        0x5136b84a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 307
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 286
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 297
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-static {v0}, Lcom/sonymobile/music/common/GoogleAnalyticsUtil;->allowGaTracking(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sAllowTracking:Z

    .line 78
    sget-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;->CONTAINER_LOAD_NONE:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    sput-object v0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->sContainerLoadResult:Lcom/sonymobile/music/common/GoogleAnalyticsProvider$ContainerLoadResult;

    .line 79
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 292
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
