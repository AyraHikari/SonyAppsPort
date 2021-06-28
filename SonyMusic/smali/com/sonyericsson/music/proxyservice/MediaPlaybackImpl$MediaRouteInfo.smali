.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;
.super Ljava/lang/Object;
.source "MediaPlaybackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaRouteInfo"
.end annotation


# instance fields
.field private final mCastDevice:Landroid/os/Bundle;

.field private final mRouteId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;->mRouteId:Ljava/lang/String;

    .line 1779
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;->mCastDevice:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method getCastDevice()Landroid/os/Bundle;
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;->mCastDevice:Landroid/os/Bundle;

    return-object v0
.end method

.method getRouteId()Ljava/lang/String;
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;->mRouteId:Ljava/lang/String;

    return-object v0
.end method
