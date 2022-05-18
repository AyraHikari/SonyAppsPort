.class public Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;
.super Ljava/lang/Object;
.source "RecentlyPlayedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore$RecentlyPlayedType;,
        Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore$Columns;
    }
.end annotation


# static fields
.field public static final QUERY_PARAMETER_MAX_NUMBER_OF_ITEMS:Ljava/lang/String; = "max_number_of_items"

.field public static final QUERY_PARAMETER_OBSERVER_REGISTRATION:Ljava/lang/String; = "register_observer"

.field public static final RECENTLY_PLAYED_INTENT_EXTRA_CONTAINER_URI:Ljava/lang/String; = "container_uri"

.field public static final RECENTLY_PLAYED_INTENT_EXTRA_ID:Ljava/lang/String; = "id"

.field public static final RECENTLY_PLAYED_STORE_MAX_SIZE:I = 0x1e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 35
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f100278

    .line 36
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getRecentlyPlayedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".RECENTLY_PLAYED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecentlyPlayedRegisterObserverUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 30
    invoke-static {p0}, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedStore;->getRecentlyPlayedContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "register_observer"

    const-string v1, "value"

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static setMaxNumberOfItems(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "max_number_of_items"

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
