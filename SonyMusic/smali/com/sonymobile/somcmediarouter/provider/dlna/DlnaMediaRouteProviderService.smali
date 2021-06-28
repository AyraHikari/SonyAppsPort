.class public Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProviderService;
.super Landroidx/mediarouter/media/MediaRouteProviderService;
.source "DlnaMediaRouteProviderService.java"


# instance fields
.field private mDlnaProvider:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMediaRouteProvider()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 1

    .line 17
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-direct {v0, p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProviderService;->mDlnaProvider:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    .line 18
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProviderService;->mDlnaProvider:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProviderService;->mDlnaProvider:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->terminateProvider()V

    .line 26
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
