.class Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaPlaybackImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 410
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$500(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;->getRouteId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaRouteToSelectAfterAdd:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$MediaRouteInfo;

    :cond_0
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 428
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 434
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$500(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->mMediaPlaybackState:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    .line 436
    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$100(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    .line 437
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p1

    .line 438
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl$6;->this$0:Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;

    invoke-static {p2, p1}, Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;->access$600(Lcom/sonyericsson/music/proxyservice/MediaPlaybackImpl;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;)V

    :cond_0
    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 444
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    return-void
.end method
