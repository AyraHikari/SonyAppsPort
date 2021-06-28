.class public Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;
.super Ljava/lang/Object;
.source "MediaBrowserId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;
    }
.end annotation


# static fields
.field private static final CONTAINER_POS_KEY:Ljava/lang/String; = "container_pos"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "container_pos"

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static build(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 0

    .line 21
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->build(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static interpret(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;
    .locals 1

    .line 25
    new-instance v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
