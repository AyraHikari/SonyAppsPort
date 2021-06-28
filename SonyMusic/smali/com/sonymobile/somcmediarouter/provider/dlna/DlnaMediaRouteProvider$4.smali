.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;
.super Ljava/lang/Object;
.source "DlnaMediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->publishRoutes(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

.field final synthetic val$mediaRoutes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    iput-object p2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;->val$mediaRoutes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$4;->val$mediaRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    .line 308
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setDescriptor(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
