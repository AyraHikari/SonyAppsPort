.class final Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V
    .locals 0

    .line 774
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 779
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 799
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->refreshRoutes()V

    .line 800
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 784
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 789
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 794
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteCastDialog;->update()V

    return-void
.end method
