.class final Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;
.super Landroidx/mediarouter/media/MediaRouteProvider$Callback;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProviderService;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 0

    .line 540
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProvider;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 0

    .line 546
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;->this$0:Landroidx/mediarouter/media/MediaRouteProviderService;

    invoke-virtual {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
