.class Lcom/sonyericsson/music/library/CloudFragment$1;
.super Ljava/lang/Object;
.source "CloudFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/CloudFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/CloudFragment;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$1;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment$1;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    iget-object v1, v0, Lcom/sonyericsson/music/library/CloudFragment;->mAccountName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/music/library/CloudFragment$1;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    iget v2, v1, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    iget v1, v1, Lcom/sonyericsson/music/library/CloudFragment;->mServiceId:I

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->start(Lcom/sonyericsson/music/MusicActivity;IIZ)V

    :cond_0
    return-void
.end method
