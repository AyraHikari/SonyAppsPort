.class Lcom/sonyericsson/music/library/CloudFragment$5;
.super Ljava/lang/Object;
.source "CloudFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/CloudFragment;->handleAccountState(Lcom/sonyericsson/music/metadata/cloud/db/CloudAccount;)V
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

    .line 627
    iput-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$5;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 630
    iget-object p1, p0, Lcom/sonyericsson/music/library/CloudFragment$5;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/sonyericsson/music/library/CloudFragment$5;->this$0:Lcom/sonyericsson/music/library/CloudFragment;

    iget v1, v0, Lcom/sonyericsson/music/library/CloudFragment;->mDbAccountId:I

    iget v0, v0, Lcom/sonyericsson/music/library/CloudFragment;->mServiceId:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/sonyericsson/music/metadata/cloud/SyncTask;->start(Lcom/sonyericsson/music/MusicActivity;IIZ)V

    :cond_0
    return-void
.end method
