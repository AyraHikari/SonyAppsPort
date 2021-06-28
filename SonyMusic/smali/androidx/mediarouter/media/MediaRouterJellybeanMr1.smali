.class final Landroidx/mediarouter/media/MediaRouterJellybeanMr1;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;,
        Landroidx/mediarouter/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;,
        Landroidx/mediarouter/media/MediaRouterJellybeanMr1$ActiveScanWorkaround;,
        Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;,
        Landroidx/mediarouter/media/MediaRouterJellybeanMr1$RouteInfo;
    }
.end annotation


# direct methods
.method public static createCallback(Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;)Ljava/lang/Object;
    .locals 1

    .line 37
    new-instance v0, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouterJellybeanMr1$CallbackProxy;-><init>(Landroidx/mediarouter/media/MediaRouterJellybeanMr1$Callback;)V

    return-object v0
.end method
