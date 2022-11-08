.class Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredWidgetRefresh"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field private final mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshPending:Z

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V
    .locals 3
    .param p3, "host"    # Lcom/android/launcher3/widget/LauncherAppWidgetHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Lcom/android/launcher3/widget/LauncherAppWidgetHost;",
            ")V"
        }
    .end annotation

    .line 3548
    .local p0, "this":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3549
    iput-object p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 3550
    iput-object p3, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 3551
    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    .line 3552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 3554
    invoke-virtual {p3, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 3557
    invoke-static {p1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3558
    .local v0, "msg":Landroid/os/Message;
    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3559
    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3560
    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$com-android-launcher3-Workspace$DeferredWidgetRefresh(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "views"    # Ljava/util/ArrayList;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "view"    # Landroid/view/View;

    .line 3575
    .local p0, "this":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    instance-of v0, p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3576
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 0

    .line 3588
    .local p0, "this":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    .line 3589
    return-void
.end method

.method public run()V
    .locals 3

    .line 3564
    .local p0, "this":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 3565
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3567
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_0

    .line 3568
    return-void

    .line 3571
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 3573
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3574
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/PendingAppWidgetHostView;>;"
    iget-object v1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3581
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 3582
    .local v2, "view":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->reInflate()V

    .line 3583
    .end local v2    # "view":Lcom/android/launcher3/widget/PendingAppWidgetHostView;
    goto :goto_0

    .line 3584
    :cond_1
    return-void
.end method
