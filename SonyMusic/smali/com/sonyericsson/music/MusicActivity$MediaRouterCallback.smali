.class Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/MusicActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/MusicActivity$1;)V
    .locals 0

    .line 2385
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;-><init>(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 2389
    invoke-super {p0, p1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 2394
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2398
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$1000(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2399
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$1100(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2400
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$1100(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sonyericsson/music/CastGa;->addDevice(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 2403
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean p2, p1, Lcom/sonyericsson/music/MusicActivity;->mDisableCastButtonVisibilityUpdate:Z

    if-nez p2, :cond_2

    .line 2404
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_2
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 2473
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/MusicActivity;->access$1000(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean p2, p1, Lcom/sonyericsson/music/MusicActivity;->mDisableCastButtonVisibilityUpdate:Z

    if-nez p2, :cond_0

    .line 2474
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 5

    .line 2415
    iget-object p1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object p1

    .line 2416
    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->getPlayerState()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    .line 2418
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2419
    invoke-virtual {v0}, Lcom/sonyericsson/music/player/PlayerState;->getRouteType()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    iget-boolean v1, v0, Lcom/sonyericsson/music/MusicActivity;->mAllowSelectRoute:Z

    if-eqz v1, :cond_6

    .line 2420
    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$1100(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2424
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$1000(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2425
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {v0}, Lcom/sonyericsson/music/MusicActivity;->access$1100(Lcom/sonyericsson/music/MusicActivity;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/MediaRouterUtils;->getRouteType(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2431
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_1

    .line 2429
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 2434
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    .line 2435
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    .line 2436
    invoke-static {v1, v4}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isShowCastConnectChargerDlg(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2439
    invoke-static {v3}, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;->newInstance(I)Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;

    move-result-object v0

    .line 2441
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "cast_connect_charger_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne v0, v2, :cond_4

    .line 2444
    iget-object v0, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    .line 2445
    invoke-static {v0, v3}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isShowCastConnectChargerDlg(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2448
    invoke-static {v4}, Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;->newInstance(I)Lcom/sonyericsson/music/dialogs/CastConnectChargerDialog;

    move-result-object v0

    .line 2450
    iget-object v1, p0, Lcom/sonyericsson/music/MusicActivity$MediaRouterCallback;->this$0:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "cast_connect_charger_dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2456
    :cond_4
    :goto_2
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/player/PlayerController;->setMediaRoute(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method
