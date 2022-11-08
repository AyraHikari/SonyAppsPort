.class Lcom/sonyericsson/music/CastGa;
.super Ljava/lang/Object;
.source "CastGa.java"


# static fields
.field private static final DEVICES_SEPARATOR:Ljava/lang/String; = ":"

.field private static final DEVICES_SPLIT:Ljava/lang/String; = ";"

.field private static final DLNA_CAST_PREFIX:Ljava/lang/String; = "DC"

.field private static final GOOGLE_CAST_PREFIX:Ljava/lang/String; = "GC"

.field private static final LIVE_AUDIO_PREFIX:Ljava/lang/String; = "LA"

.field private static final sCastDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDevice(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string p1, "GC"

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 69
    sget-object p0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string p1, "DC"

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 74
    sget-object p0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string p1, "LA"

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 41
    invoke-static {p0}, Lcom/sonyericsson/music/CastGa;->readPersistedData(Landroid/content/Context;)V

    return-void
.end method

.method private static persistCastDevices(Landroid/content/Context;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    sget-object v1, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setCastDevices(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    sget-object p0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    :cond_1
    return-void
.end method

.method private static readPersistedData(Landroid/content/Context;)V
    .locals 4

    .line 45
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getCastDevices(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 47
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, ";"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 56
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 57
    sget-object v3, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static report(Landroid/content/Context;)V
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GC"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    sget-object v1, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string v2, "GC"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DC"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sget-object v1, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string v2, "DC"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LA"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Lcom/sonyericsson/music/CastGa;->sCastDevices:Ljava/util/HashSet;

    const-string v2, "LA"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music-gagtm-castDevices"

    .line 104
    invoke-static {v1, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsConstants$CustomDimensions$CustomDimensionVersion;->addVersionPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "music-gagtm-castDevices"

    .line 105
    invoke-static {p0, v1, v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/sonyericsson/music/CastGa;->persistCastDevices(Landroid/content/Context;)V

    .line 109
    sget-object p0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    return-void
.end method
