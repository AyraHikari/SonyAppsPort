.class public Lcom/sonyericsson/music/common/MediaRouterUtils;
.super Ljava/lang/Object;
.source "MediaRouterUtils.java"


# static fields
.field private static final DLNA_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.sonymobile.dlna.provider.dmr"

.field private static sIsDlnaSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSelector(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouteSelector;
    .locals 2

    .line 47
    new-instance v0, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    const-string v1, "F3F3F51B"

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 49
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 51
    invoke-static {p0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isDlnaSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_AUDIO"

    .line 52
    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaRouteInfo(Landroidx/mediarouter/media/MediaRouter;Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouter$RouteInfo;
    .locals 2

    if-eqz p0, :cond_1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 63
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I
    .locals 1

    .line 91
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isGoogleCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isDlnaCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 95
    :cond_1
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isLiveAudioCast(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static hasOnlyDefaultRoute(Landroidx/mediarouter/media/MediaRouter;)Z
    .locals 3

    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 80
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isDlnaCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    const-string v0, "com.sonymobile.somcmediarouter.provider.dlna.intent.category.CATEGORY_DLNA_AUDIO"

    .line 108
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isRouteOfSpecificType(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isDlnaSupported(Landroid/content/Context;)Z
    .locals 2

    .line 36
    sget-object v0, Lcom/sonyericsson/music/common/MediaRouterUtils;->sIsDlnaSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sonymobile.dlna.provider.dmr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/pm/ProviderInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/music/common/MediaRouterUtils;->sIsDlnaSupported:Ljava/lang/Boolean;

    .line 43
    :cond_1
    sget-object p0, Lcom/sonyericsson/music/common/MediaRouterUtils;->sIsDlnaSupported:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isGoogleCast(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    const-string v0, "F3F3F51B"

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isRouteOfSpecificType(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isLiveAudioCast(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object p0

    const-string v0, "android.media.intent.category.LIVE_AUDIO"

    .line 116
    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/MediaRouterUtils;->isRouteOfSpecificType(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isRouteOfSpecificType(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 122
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getControlFilters()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 126
    invoke-virtual {v0}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
